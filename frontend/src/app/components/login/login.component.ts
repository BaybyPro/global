
import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators } from '@angular/forms';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AuthService } from '../../services/auth.service';
import { Router } from '@angular/router';
import { SnackbarService } from '../../services/snackbar.service';
import { Global } from '../../models/global';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [FormsModule,ReactiveFormsModule],
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent implements OnInit {

  form: any = FormGroup;
  responseMessage: any;

  constructor(private  formBuilder:FormBuilder,
    private authService:AuthService,
    private router:Router,
    private snackBar:SnackbarService
  ) {
    
  }

  ngOnInit(): void {
    this.form = this.formBuilder.group({
      name:'',
      password:''
    });
  }

  //valida al usurio para acceder al dashboard
  submit(){
    console.log(this.form.getRawValue())
    this.authService.login(this.form.getRawValue()).subscribe(
      (response)=>{
          localStorage.setItem('token',response.token)
          this.router.navigate(['/dashboard']);
      },(err)=>{
        console.log(err.error?.message)
        if(err.error?.message){
          this.responseMessage = err.error?.message;
        }else{
          this.responseMessage = Global.genericError
        }
        this.snackBar.openSnackBar(this.responseMessage,"error")
      }
    )
  }
}
