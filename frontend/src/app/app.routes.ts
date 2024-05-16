import { Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { LoginComponent } from './components/login/login.component';
import { authGuard } from './guards/auth.guard';

export const routes: Routes = [
    {path:'',component:LoginComponent},
    {path:'login',component:LoginComponent},
    //protegemos la ruta dashboard
    {path:'dashboard',component:DashboardComponent,canActivate:[authGuard]},
    {path:'**',component:LoginComponent}
];
