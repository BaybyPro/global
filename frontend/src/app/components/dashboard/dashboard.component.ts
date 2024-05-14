import { Component, OnInit, inject } from '@angular/core';
import { AuthService } from '../../services/auth.service';
import { CookieService } from 'ngx-cookie-service';
import { MatPaginatorModule } from '@angular/material/paginator';
import { EmployeeService } from '../../services/employee.service';
import { Employee } from '../../models/employee';
import { MatIconModule } from '@angular/material/icon';
import { MatInputModule } from '@angular/material/input';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatDialog, MatDialogConfig } from '@angular/material/dialog';
import { CreateComponent } from '../create/create.component';
import { EditComponent } from '../edit/edit.component';

@Component({
  selector: 'app-dashboard',
  standalone: true,
  imports: [MatPaginatorModule, MatIconModule, MatInputModule, MatFormFieldModule],
  templateUrl: './dashboard.component.html',
  styleUrl: './dashboard.component.css'
})
export class DashboardComponent implements OnInit {

  message: any;
  authService = inject(AuthService);
  employeeService = inject(EmployeeService);
  cookieService = inject(CookieService);
  employees?: Employee[];
  pageSize: number = 10;
  currentPage: number = 1;
  count: number = 0;
  id: number = 0;
  name: string = '';
  secondName: string = '';
  lasname: string = '';
  secondLasname: string = '';
  confirm: boolean = false;

  constructor(private dialog: MatDialog) {

  }

  ngOnInit(): void {
    this.getUser();
    this.getEmployees();
    this.getEmployeesPerPage();

  }
  // obtener name del usuario
  getUser() {
    this.authService.getUser().subscribe(
      (response) => {
        this.message = response.name
      }, (err) => {
        console.log(err)
      }
    );
  }
  // obtener los empleados
  getEmployees() {
    this.employeeService.getEmployees().subscribe(
      (response) => {
        this.count = response.employees.length
      }, (err) => {
        console.log(err)
      }
    )
  }

  //obtemer los 10 empleados por paguna
  getEmployeesPerPage() {
    this.employeeService.getEmployeesPerPage(this.currentPage, this.pageSize).subscribe(
      (response) => {

        this.employees = response.employees
      }, (err) => {
        console.log(err);
      }
    )
  }

  //obtener los siguentes 10 empleados al cambiar la pagina
  onPageChange(event: any) {
    this.currentPage = event.pageIndex + 1;
    this.employeeService.getEmployeesPerPage(this.currentPage, this.pageSize).subscribe(
      (response) => {

        this.employees = response.employees
      }, (err) => {
        console.log(err);
      }
    )
  }

  add() {
    const dialogConfig = new MatDialogConfig();
    dialogConfig.width = "550px";
    dialogConfig.minHeight = "200px";
    this.dialog.open(CreateComponent, dialogConfig)

  }

  edit(id: any) {
    this.employeeService.getEmployee(id).subscribe(
      (response) => {
        localStorage.setItem("employee",JSON.stringify(response.employee));
        const dialogConfig = new MatDialogConfig();
        dialogConfig.width = "550px";
        dialogConfig.minHeight = "200px";
        this.dialog.open(EditComponent, dialogConfig);
        localStorage.setItem("id", id.toString())
      }, (err) => {
        console.log(err)
      }
    )
  }

  //borrar a un empleado
  deleteEmployee(id: any, name: any, secondN: any, lasname: any, secondL: any) {
    this.id = id;
    this.name = name;
    this.secondName = secondN;
    this.lasname = lasname;
    this.secondLasname = secondL
    this.confirm = true

  }
  confirmDelete(id: any) {
    this.employeeService.deleteEmployee(id).subscribe(
      (response) => {
        console.log(response)
        this.confirm = false
        window.location.reload();
      }, (err) => {
        console.log(err)
      }
    )
  }
  cancelDelete() {
    this.confirm = false
  }

}


