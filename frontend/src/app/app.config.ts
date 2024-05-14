import { ApplicationConfig } from '@angular/core';
import { provideRouter } from '@angular/router';
import { provideHttpClient, withFetch, withInterceptors } from '@angular/common/http';
import { routes } from './app.routes';
import { tokenInterceptor } from './models/token.interceptor';
import { provideNoopAnimations } from '@angular/platform-browser/animations';

export const appConfig: ApplicationConfig = {
  providers: [provideNoopAnimations(),provideRouter(routes),provideHttpClient(withFetch()),
  provideHttpClient(withInterceptors([tokenInterceptor]))
  ]
};
