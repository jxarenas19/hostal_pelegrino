<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Hostal extends Model
{
    protected $table = 'hp_hostales';

    /**
     * Obtiene todas las imagenes asociadas a un hostal
     */
    public function images()
    {
        return $this->hasMany(Imagen::class, 'hostales_id');
    }

    /**Devuelve un array con cada una de las fotos y sus atributos
     * @param $id_hostal
     * @return listado de images
     */
    public function imagesToHostalArray()
    {
        return $this->images->toArray();

    }

    /** Collection de habitaciones relacionadas con el hostal
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function rooms()
    {
        return $this->hasMany(Habitacion::class, 'hostales_id');
    }

    /**Metodo encargado de retornar un array con los datos en español
     * de las habitaciones del hostal
     * @return array|\Illuminate\Support\Collection
     */
    public function roomsToHostalArrayEs()
    {
        $rooms = $this->rooms;
        $roomResponse = collect();
        foreach ($rooms as $room){
            $roomTipo = $room->typeRoom->attributesToArray();
            $data = array(
                "id" => $room->getAttribute('id'),
                "nombre" => $room->getAttribute('nombre'),
                "tipoRoom" => $roomTipo['nombre'],
                "precio" => $room->pricesToRoomArrayEs()->toArray(),
                "hostal" => $room->hostal->attributesToArray()['nombre'],
                "descripcion" => ($room->getAttribute('descripcion')!=null)?
                    $room->getAttribute('descripcion'): $roomTipo['descripcion'],
            );
            $roomResponse[] = $data;
    }
        return $roomResponse;
    }

    /**Metodo encargado de retornar un array con los datos en ingles
     * de las habitaciones del hostal
     * @return array|\Illuminate\Support\Collection
     */
    public function roomsToHostalArrayEn()
    {
        $rooms = $this->rooms;
        $roomResponse = collect();
        foreach ($rooms as $room){
            $roomTipo = $room->typeRoom->attributesToArray();
            $data = array(
                "id" => $room->getAttribute('id'),
                "nombre" => $room->getAttribute('nombre_in'),
                "tipoRoom" => $roomTipo['nombre_in'],
                "precio" => $room->pricesToRoomArrayEn()->toArray(),
                "hostal" => $room->hostal->attributesToArray()['nombre'],
                "descripcion" => ($room->getAttribute('descripcion_in')!=null)?
                    $room->getAttribute('descripcion_in'): $roomTipo['descripcion_in'],
            );
            $roomResponse[] = $data;
        }
        return $roomResponse;
    }

    /**Datos del hostal en español
     * @return array
     */
    public function hostalToArrayEs()
    {
        $data = array(
            "id" => $this->getAttribute('id'),
            "nombre" => $this->getAttribute('nombre'),
            "descripcion" => $this->getAttribute('descripcion'),
            "mini_descripcion" => $this->getAttribute('mini_descripcion'),
            "direccion" => $this->getAttribute('direccion'),
            "email" => $this->getAttribute('email'),
            "latitud" => $this->getAttribute('lat'),
            "longitud" => $this->getAttribute('lng'),
            "rooms" => $this->roomsToHostalArrayEs()->toArray(),
            "services" => $this->servicesToHostalArrayEs(),
            "images" => $this->imagesToHostalArray()
        );
        return $data;
    }

    /**Datos del hostal en ingles
     * @return array
     */
    public function hostalToArrayEn()
    {
        $data = array(
            "id" => $this->getAttribute('id'),
            "nombre" => $this->getAttribute('nombre'),
            "descripcion" => $this->getAttribute('descripcion_in'),
            "mini_descripcion" => $this->getAttribute('mini_descripcion_in'),
            "direccion" => $this->getAttribute('direccion_in'),
            "email" => $this->getAttribute('email'),
            "latitud" => $this->getAttribute('lat'),
            "longitud" => $this->getAttribute('lng'),
            "rooms" => $this->roomsToHostalArrayEn()->toArray(),
            "services" => $this->servicesToHostalArrayEn(),
            "images" => $this->imagesToHostalArray()
        );
        return $data;
    }

    /**Devuelve los servicios asociados al hostal
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function services()
    {
        return $this->hasMany(Servicio::class,'hostales_id');
    }

    public function servicesToHostalArrayEs()
    {
        $services = $this->services;
        $serviceResponse = collect();
        foreach ($services as $service){
            $data = array(
                "titulo" => $service->getAttribute('titulo'),
                "descripcion" => $service->getAttribute('descripcion'),
                "precio" => $service->getAttribute('precio'),
            );
            $serviceResponse[] = $data;
        }
        return $serviceResponse->toArray();
    }

    public function servicesToHostalArrayEn()
    {
        $services = $this->services;
        $serviceResponse = collect();
        foreach ($services as $service){
            $data = array(
                "titulo" => $service->getAttribute('titulo_in'),
                "descripcion" => $service->getAttribute('descripcion_in'),
                "precio" => $service->getAttribute('precio'),
            );
            $serviceResponse[] = $data;
        }
        return $serviceResponse->toArray();
    }
}
