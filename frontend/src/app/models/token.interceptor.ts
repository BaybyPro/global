import { HttpInterceptorFn } from '@angular/common/http';
import { CookieService } from 'ngx-cookie-service';

export const tokenInterceptor: HttpInterceptorFn = (req, next) => {

  const token = localStorage.getItem('token');


  const authReq = req.clone({
    headers: req.headers.set('Authorization',`Bearer ${token}`),
  });
  
  
  return next(authReq);
};
