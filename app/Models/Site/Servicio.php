<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class Servicio extends Model
{
    protected $table = 'hp_servicios';

    /**Devuelve el hostal relacionado con el servicio
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function hostal()
    {
        return $this->belongsTo(Hostal::class,'hostales_id');
    }

    public function generalServiceEs()
    {
        $free = DB::table('hp_servicios')
            ->where('hostales_id','=',null)
            ->where('precio','=','')->get();
        $pay = DB::table('hp_servicios')
            ->where('hostales_id','=',null)
            ->where('precio','!=','')->get();
        $freeResponse = collect();
        $payResponse = collect();
        foreach ($free as $item){
            $data = array(
                "titulo" => $item->titulo,
                "descripcion" => $item->descripcion,
                "precio" => $item->precio,
            );
            $freeResponse[] = $data;
        }
        foreach ($pay as $item){
            $data = array(
                "titulo" => $item->titulo,
                "descripcion" => $item->descripcion,
                "precio" => $item->precio,
            );
            $payResponse[] = $data;
        }
        return array(
            "freeServices" => $freeResponse->toArray(),
            "payServices" => $payResponse->toArray(),
        );
    }

    public function generalServiceEn()
    {
        $free = DB::table('hp_servicios')
            ->where('hostales_id','=',null)
            ->where('precio','=','')->get();
        $pay = DB::table('hp_servicios')
            ->where('hostales_id','=',null)
            ->where('precio','!=','')->get();
        $freeResponse = collect();
        $payResponse = collect();
        foreach ($free as $item){
            $data = array(
                "titulo" => $item->titulo_in,
                "descripcion" => $item->descripcion_in,
                "precio" => $item->precio,
            );
            $freeResponse[] = $data;
        }
        foreach ($pay as $item){
            $data = array(
                "titulo" => $item->titulo_in,
                "descripcion" => $item->descripcion_in,
                "precio" => $item->precio,
            );
            $payResponse[] = $data;
        }
        return array(
            "freeServices" => $freeResponse->toArray(),
            "payServices" => $payResponse->toArray(),
        );
    }

}
