<?php

namespace App\Http\Middleware;

use Closure;

class PetugasMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
      if(auth()->check() && auth()->user()->jenis()){
        return redirect('admin');
      }else{
      return $next($request);
      }
    }
}
