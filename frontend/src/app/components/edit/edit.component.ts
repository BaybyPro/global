import { Component, OnInit } from '@angular/core';
import {MatDialogRef, MatDialog, MatDialogConfig} from '@angular/material/dialog';
import { MatDialogModule, MatDialogActions } from '@angular/material/dialog';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { Global } from '../../models/global';
import { EmployeeService } from '../../services/employee.service';
import {MatIconModule} from '@angular/material/icon';
import {MatDatepickerModule} from '@angular/material/datepicker';
import {MatInputModule} from '@angular/material/input';
import {MatFormFieldModule} from '@angular/material/form-field';
import {provideNativeDateAdapter} from '@angular/material/core';

import moment from 'moment';
import { Employee } from '../../models/employee';

@Component({
  selector: 'app-edit',
  standalone: true,
  providers: [provideNativeDateAdapter(),],
  imports: [MatDialogActions,MatDialogModule,FormsModule,ReactiveFormsModule,   MatFormFieldModule, MatInputModule, MatDatepickerModule, MatIconModule],
  templateUrl: '../create/create.component.html',
  styleUrl: './edit.component.css'
})
export class EditComponent implements OnInit {
  employee?:Employee;
  employeeform: any = FormGroup;
  fecha:string = '';
  local:any = localStorage.getItem("employee");
  data:any = JSON.parse(this.local);
  dateIncome:boolean= true;
  constructor(private formBuilder: FormBuilder,
    private employeeService:EmployeeService,
    public dialogRef: MatDialogRef<EditComponent>,
  ){

  }

  ngOnInit(): void {
    console.log(this.data.dateIncome)
    //validar los campos según especificó 
    this.employeeform = this.formBuilder.group({
      fistLastname:[this.data.fistLastname,[Validators.required,Validators.pattern(Global.namesRegex)]],
      secondLastname:[this.data.secondLastname,[Validators.required,Validators.pattern(Global.namesRegex)]],
      fistName:[this.data.fistName,[Validators.required,Validators.pattern(Global.nameRegex)]],
      anotherNames:[this.data.anotherNames,[Validators.pattern(Global.namesRegex)]],
      country:[this.data.country,[Validators.required]],
      typeId:[this.data.typeId,[Validators.required]],
      idNumber:[this.data.idNumber,[Validators.required,Validators.pattern(Global.datesId)]],
      dateIncome:[this.data.dateIncome,[Validators.required]],
      area:[this.data.area,[Validators.required]]
    });
  }

  

  //cambia el formato de la fecha puesta en el form aceptable para el backend
  changeDatePicker(fecha:any){
    this.fecha = moment(fecha, 'M/D/YYYY').format('YYYY-MM-DD 00:00:00');
 
  };

  changeDate(){
    this.dateIncome = false
  }

  submit(){
    console.log(this.employeeform.value)
    var formData = this.employeeform.value;
    var data ={
      fistLastname : formData.fistLastname,
      secondLastname : formData.secondLastname,
      fistName : formData.fistName,
      anotherNames:formData.anotherNames,
      country : formData.country,
      typeId : formData.typeId,
      idNumber : formData.idNumber,
      dateIncome : formData.dateIncome,
      area : formData.area
    }
    console.log(data)
    this.employeeService.editEmployee(this.data.id,data).subscribe(
      (response)=>{
        this.dialogRef.close();
        window.location.reload();
      },
      (err)=>{
        console.log(err)
      }
    );
  }
}
