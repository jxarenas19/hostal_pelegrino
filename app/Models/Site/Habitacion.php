<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Habitacion extends Model
{
    protected $table = 'hp_habitaciones';

    /**Devuelve el hostal relacionado con la habitacion
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function hostal()
    {
        return $this->belongsTo(Hostal::class,'hostales_id');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function typeRoom()
    {
        return $this->belongsTo(TipoHabitacion::class,'thabitaciones_id');
    }

    /**Devuelve los precios de la habitacion
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function prices()
    {
        return $this->hasMany(Precio::class,'habitaciones_id');
    }

    public function pricesToRoomArrayEs()
    {
        $prices = $this->prices;
        $pricesResponse = collect();
        foreach ($prices as $price){
            $array = array(
                "temporada" =>$price->season->getAttribute('nombre'),
                "inicio" =>$price->season->fechas->getAttribute('fecha_inicio'),
                "fin" =>$price->season->fechas->getAttribute('fecha_fin'),
                "precio" => $price->toArray()['precio']
            );
            $pricesResponse[] = $array;
        }
        return $pricesResponse;
    }
    public function pricesToRoomArrayEn()
    {
        $prices = $this->prices;
        $pricesResponse = collect();
        foreach ($prices as $price){
            $array = array(
                "temporada" =>$price->season->getAttribute('nombre_in'),
                "inicio" =>$price->season->fechas->getAttribute('fecha_inicio'),
                "fin" =>$price->season->fechas->getAttribute('fecha_fin'),
                "precio" => $price->toArray()['precio']
            );
            $pricesResponse[] = $array;
        }
        return $pricesResponse;
    }
    /**
     * Obtiene todas las imagenes asociadas a un hostal
     */
    public function images()
    {
        return $this->hasMany(Imagen::class, 'habitaciones_id');
    }

    /**Devuelve un array con cada una de las fotos y sus atributos
     * @param $id_hostal
     * @return listado de images
     */
    public function imagesToHostalArray()
    {
        return $this->images->toArray();

    }
}
