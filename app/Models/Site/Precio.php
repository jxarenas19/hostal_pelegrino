<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Precio extends Model
{
    protected $table = 'hp_precio';

    /**Devuelve la habitacion relacionada con el precio
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function room()
    {
        return $this->belongsTo(Habitacion::class,'habitaciones_id');
    }

    /** Temporada del asociada al precio
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function season()
    {
        return $this->belongsTo(Temporada::class, 'temporada_id');
    }
}
