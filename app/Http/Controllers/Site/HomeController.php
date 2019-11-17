<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use App\Models\Site\Contacto;
use App\Models\Site\DebeSaber;
use App\Models\Site\Hostal;
use App\Models\Site\Imagen;
use App\Models\Site\Servicio;
use crocodicstudio\crudbooster\helpers\MailHelper;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Show the application home screen to the user.
     *
     * @return Response
     */
    public function index()
    {
        $hostales = Hostal::all();
        $dataHostales = collect();
        $locale = (Session::get('locale')!=null) ? Session::get('locale'): 'es';
        foreach ($hostales as $hostal) {
            if($locale=='es') {
                $dataHostales[] = $hostal->hostalToArrayEs();
                $generalServices = (new Servicio())->generalServiceEs();
                $debeSaber = (new DebeSaber()) ->debeSaberToArrayEs();
                $contacto = (new Contacto()) ->contactoArrayEs();
            }
            else{
                $dataHostales[] = $hostal->hostalToArrayEn();
                $generalServices = (new Servicio())->generalServiceEn();
                $debeSaber = (new DebeSaber()) ->debeSaberToArrayEn();
                $contacto = (new Contacto()) ->contactoArrayEn();
            }
        }
        $dataResponse = array(
            "hostales" => $dataHostales->toArray(),
            "services" => $generalServices,
            "debeSaber" => $debeSaber,
            "contacto" => $contacto
        );
        return view('site.home')->with('dataGeneral', $dataResponse);
    }

    /**
     * Change language site
     * @param $locale
     * @return \Illuminate\Http\RedirectResponse
     */
    public function lang($locale)
    {
        App::setLocale($locale);
        session()->put('locale', $locale);
        return redirect()->back();
    }
}
