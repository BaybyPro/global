import { Injectable } from '@angular/core';
import { HttpClient, HttpErrorResponse,HttpParams  } from '@angular/common/http'
import { Global } from '../models/global';

@Injectable({
  providedIn: 'root'
})
export class EmployeeService {

  url:string
  constructor(private _http:HttpClient) { 
    this.url = Global.apiUrl
  }

  getEmployeesPerPage(currentPage: number, perPage: number){
    // Configurar los parámetros de la solicitud HTTP
    let params = new HttpParams()
      .set('currentPage', currentPage.toString())
      .set('perPage', perPage.toString());
    return this._http.get<any>(this.url+'/getPerPage',{ params: params })
  }

  getEmployees(){
    return this._http.get<any>(this.url+'/get')
  }

  addEmployees(data:any){
    return this._http.post<any>(this.url+'/add',data)
  }

  deleteEmployee(id: any) {
    return this._http.delete<any>(`${this.url}/delete/${id}`);
  }
  getEmployee(id: any) {
    return this._http.get<any>(`${this.url}/employee/${id}`);
  }
  editEmployee(id: any,data:any){
    return this._http.put<any>(`${this.url}/update/${id}`,data);
  }
}


