import { HttpClient, HttpErrorResponse,HttpClientModule } from '@angular/common/http'
import { Injectable, inject } from '@angular/core';
import { Global } from '../models/global';
import { routes } from '../app.routes';
import { Router } from '@angular/router';

@Injectable({
  providedIn: 'root'
})
export class AuthService {

  url:string
  routes= inject(Router)

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

  public isAuthenticated(): boolean {
      const token = localStorage.getItem('token');
      if (!token) {
        return false;
      } else {
        this.routes.navigate(['/dasboard']);
        return true;
      }

    }

  loggedIn() {
    
      return !!localStorage.getItem('token');
  }

  logout() {
      localStorage.removeItem('token');
      this.routes.navigate(['/login']);
  }
}
