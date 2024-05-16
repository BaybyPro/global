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
import { SnackbarService } from '../../services/snackbar.service';

@Component({
  selector: 'app-create',
  standalone: true,
  providers: [provideNativeDateAdapter(),],
  imports: [MatDialogActions,MatDialogModule,FormsModule,ReactiveFormsModule,   MatFormFieldModule, MatInputModule, MatDatepickerModule, MatIconModule],
  templateUrl: './create.component.html',
  styleUrl: './create.component.css'
})

export class CreateComponent implements OnInit{

  data:any;
  dateIncome:boolean= false
  employeeform: any = FormGroup;
  fecha:string = ''
  responseMessage:string=''
  constructor(private formBuilder: FormBuilder,
    private employeeService:EmployeeService,
    public dialogRef: MatDialogRef<CreateComponent>,
    public snackBar: SnackbarService
  ){

  }

  ngOnInit(): void {

    //validar los campos según especificó 
    this.employeeform = this.formBuilder.group({
      fistLastname:[null,[Validators.required,Validators.pattern(Global.lasnameRefex)]],
      secondLastname:[null,[Validators.required,Validators.pattern(Global.lasnameRefex)]],
      fistName:[null,[Validators.required,Validators.pattern(Global.nameRegex)]],
      anotherNames:[null,[Validators.pattern(Global.namesRegex)]],
      country:[null,[Validators.required]],
      typeId:[null,[Validators.required]],
      idNumber:[null,[Validators.required,Validators.pattern(Global.datesId)]],
      dateIncome:[null,[Validators.required]],
      area:[null,[Validators.required]]
    });
  }

  //cambia el formato de la fecha puesta en el form aceptable para el backend
  changeDatePicker(fecha:any){
    this.fecha = moment(fecha, 'M/D/YYYY').format('YYYY-MM-DD 00:00:00');
 
  }

  changeDate(){

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
      dateIncome : this.fecha,
      area : formData.area
    }
    console.log(data)
    this.employeeService.addEmployees(data).subscribe(
      (response)=>{
        this.dialogRef.close();
        window.location.reload();
      },
      (err)=>{
        if(err.error?.message){
          this.responseMessage = err.error?.message;
        }else{
          this.responseMessage = Global.genericError;
        }
        this.snackBar.openSnackBar(this.responseMessage,"error")
      }
    );
  }
}
