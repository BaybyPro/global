<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
class AuthController extends Controller
{
    public function register (Request $request){
        return User::create([
            'name' => $request->input('name'),
            'password' => Hash::make($request->input('password') ) 
        ]);
    }

    public function login(Request $request){
      if(!Auth::attempt($request->only('name','password'))){
          return response(['message'=>'Usuario invalido'], 401); 
      } 
  
      $user = Auth::user();
  
      $token = $user->createToken('token', ['*'], now()->addWeek())->plainTextToken;
  
      $cookie = cookie('jwt', $token, 60*24); // 1 día en minutos
  
      return response([
          'token' => $token
      ])->withCookie($cookie);
  }
  

    public function user(){
      return Auth::User();
    }
}
