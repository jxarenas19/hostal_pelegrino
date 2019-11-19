<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Temporada extends Model
{
    protected $table = 'hp_temporada';

    /**Devuelve las fechas relacionadas con la temporada
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function fechas()
    {
        return $this->hasOne(TemporadaFecha::class, 'temporada_id');
    }
}
