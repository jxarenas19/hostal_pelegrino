<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class TemporadaFecha extends Model
{
    protected $table = 'hp_temp_fechas';

    /**Devuelve la temporada relacionada con las fechas
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function temporada()
    {
        return $this->belongsTo(Hostal::class,'temporada_id');
    }
}
