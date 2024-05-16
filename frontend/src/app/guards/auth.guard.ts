import { inject } from '@angular/core';
import { CanActivateFn,CanMatchFn, Router } from '@angular/router';
import { AuthService } from '../services/auth.service';

export const authGuard: CanActivateFn = (route, state) => {

  const router = inject(Router)
  const token:any = localStorage.getItem('token')
  if(token){
    return true
  }else{
    return false
  }
};
