import { HttpClient, HttpErrorResponse,HttpClientModule } from '@angular/common/http'
import { Injectable } from '@angular/core';
import { Global } from '../models/global';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  url:string

  constructor(private _http:HttpClient,
  ) {
    this.url = Global.apiUrl
   }


   login(user: any) {
    return this._http.post<any>(this.url + '/login', user, { withCredentials: true });
  }

  getUser(){
    return this._http.get<any>(this.url+'/user', { withCredentials: true });
  }
}
