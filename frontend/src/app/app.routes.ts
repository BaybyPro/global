import { Routes } from '@angular/router';
import { AppComponent } from './app.component';
import { DashboardComponent } from './components/dashboard/dashboard.component';
import { LoginComponent } from './components/login/login.component';

export const routes: Routes = [
    {path:'',component:LoginComponent},
    {path:'dashboard',component:DashboardComponent},
    {path:'**',component:LoginComponent}
];
