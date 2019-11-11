<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Response;

class HomeController extends Controller
{
    /**
     * Show the application home screen to the user.
     *
     * @return Response
     */
    public function index()
    {
        $hostals = cb()->findAll("hp_hostales",[]);
        return view('site.home')->with('hostals',$hostals);
    }
}
