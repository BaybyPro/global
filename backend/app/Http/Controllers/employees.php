<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Route;
use App\Models\Employee;

class employees extends Controller
{
    //Metodo para agregar nuevo empleado
    public function add(Request $request) {
        $fistName = $request->input('fistName');
        $fistLastName = $request->input('fistLastname');
        $dateIncome = Carbon::parse($request['dateIncome']);
        $idNumber = $request->input('idNumber');
        //obtenemos la fecha actual
        $currentDate = Carbon::now();
        // Restar un mes a la fecha actual
        $subMonthDate = $currentDate->copy()->subMonth();
        //validamos la fecha de ingreso
        if ($dateIncome->gt($currentDate) || $dateIncome->lt($subMonthDate)) {
            return response()->json(['message' => 'La fecha de ingreso no es válida'], 400);
        }

        // valida el numero de documento del usuario
        $existingIdNumber = Employee::where('idNumber', $idNumber)->first();
        if ($existingIdNumber) {
             return response()->json(['message' => 'Ese número de documento ya se encuentra registrado'], 400);
        }
    

        // Genera el dominio

        // Remueve espacios adicionales en el fistLastname
        $fistLastNameTrim = str_replace(" ","", $fistLastName);
        // Verifica si el fistName y fistLastName ya existen
        $existingEmployee = Employee::where('fistName', $fistName)
                                     ->where('fistLastname', $fistLastName)
                                     ->first();
        $domain = ($request->input('country') === 'Colombia') ? 'global.com.co' : 'global.com.us';
        // Si el primer Nombre y apellido ya existe empieza el .1
        if ($existingEmployee) {
            $counter = 1;
            $email = strtolower($fistName . '.' . $fistLastNameTrim . '.'.$counter.'@' . $domain);
        // Incrementa el contador cuando sigue encontrando primer nombre y apellido
                while (Employee::where('email', $email)->exists()) {
                    $counter++;
                    $email = strtolower($fistName . '.' . $fistLastNameTrim . '.'.$counter.'@' . $domain);
            }
        } else {
        // Genera el email sin contador si no existe un empleado con los mismos nombres
        $email = strtolower($fistName . '.' . $fistLastNameTrim . '@' . $domain);
        }
    
        // Crea el empleado
        Employee::create([
            'fistLastname'=> $fistLastName,
            'secondLastname'=> $request->input('secondLastname'),
            'fistName'=> $fistName,
            'anotherNames'=> $request->input('anotherNames'),
            'country'=> $request->input('country'),
            'typeId'=> $request->input('typeId'),
            'idNumber'=> $request->input('idNumber'),
            'email'=> $email,
            'dateIncome'=> $request->input('dateIncome'),
            'area'=> $request->input('area'),
            'status'=> 'true'
        ]);
    
        return response()->json(['message' => 'Empleado agregado correctamente'], 201);
    }
    


    //metodo para obtener todos los empleados
    public function get(Request $request){
        $employees = Employee::all();
        return response()->json(['employees'=>$employees]);
    }

    //metodo para obtener 10  empleados por pagina
    public function getPerPage(Request $request) {
        $perPage = $request->query('perPage', 10); // Para mostrar los 10 primeros empleados
        $currentPage = $request->query('currentPage', 1); // Página actual, predeterminada a la primera página
    
        // Calcular el desplazamiento para la página actual
        $offset = ($currentPage - 1) * $perPage;
    
        // Obtener los empleados para la página actual 
        $employees = Employee::offset($offset)->limit($perPage)->get();
    
        return response()->json(['employees' => $employees]);
    }


    //metodo para editar datos de un empleado
    public function update(Request $request, $id){
        // Encuentra el empleado por su ID
        $employee = Employee::findOrFail($id);

        $originalFistName = $employee->fistName;
        $originalFistLastname = $employee->fistLastname;
        $idNumber = $request->input('idNumber');

        // valida el numero de documento del usuario
        $existingIdNumber = Employee::where('idNumber', $idNumber)->first();
        if ($existingIdNumber) {
             return response()->json(['message' => 'Ese número de documento ya se encuentra registrado'], 400);
        }
    

        // Actualiza el empleado con los datos proporcionados
        $employee->update([
            'fistLastname' => $request->input('fistLastname'),
            'secondLastname' => $request->input('secondLastname'),
            'fistName' => $request->input('fistName'),
            'anotherNames' => $request->input('anotherNames'),
            'country' => $request->input('country'),
            'typeId' => $request->input('typeId'),
            'idNumber' => $request->input('idNumber'),
            'dateIncome' => $request->input('dateIncome'),
            'area' => $request->input('area'),
        ]);

        // Verificar si fistName o fistLastname han sido modificados
    if ($originalFistName !== $request->input('fistName') || $originalFistLastname !== $request->input('fistLastname')) {

        //hacemos lo mismo que el add para borrar espacios en blanco
        $fistLastNameTrim = str_replace(" ","", $request->input('fistLastname'));

        $domain = ($request->input('country') === 'Colombia') ? 'global.com.co' : 'global.com.us';
        $email = strtolower($request->input('fistName') . '.' . $fistLastNameTrim. '@' . $domain);

        // Verifica si ya existe un empleado con esta dirección de correo electrónico
        $counter = 1;
            while (Employee::where('email', $email)->exists()) {
                $email = strtolower($request->input('fistName') . '.' . $fistLastNameTrim. '.' . $counter . '@' . $domain);
                $counter++;
              }

        // Actualiza la dirección de correo electrónico del empleado
        $employee->update(['email' => $email]);
    }

         return response()->json(['message' => 'Empleado actualizado correctamente']);
    }

    //BORRAR EMPLEADO
    public function delete(Request $request, $id){
        $employee = Employee::findOrFail($id);
        $employee->delete([]);
        return response()->json(['message' => 'Empleado eliminado correctamente'],200);
    }
    //OBTENER EMPLEADO
    public function getEmployee(Request $request, $id){
        $employee = Employee::findOrFail($id);
        return response()->json(['employee' => $employee],200);
    }
}
