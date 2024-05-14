<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;


class Authenticate 
{
    //Aquí para manejas las cookies de la authtentificación

    public function handle($request, Closure $next)
    {
        if ($jwt = $request->cookie('jwt')) {
            $request->headers->set('Authorization', 'Bearer ' . $jwt);
        }

        return $next($request);
    }
}
