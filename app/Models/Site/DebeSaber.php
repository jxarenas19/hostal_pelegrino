<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class DebeSaber extends Model
{
    protected $table = 'hp_debe_saber';

    /**Devuelve la categoria asociada
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function category()
    {
        return $this->belongsTo(CategoriaDSaber::class,'categoria_dsaber_id');
    }

    public function debeSaberToArrayEs()
    {
        $categorys = DB::table('hp_categoria_dsaber')->get();
        $arrayResponse = array();
        foreach ($categorys as $category){
            $debeSaber = $this->where('categoria_dsaber_id','=',$category->id)
                ->get()->toArray();
            foreach ($debeSaber as $item){
                $arrayResponse[$category->nombre][] = array(
                    "titulo" =>$item['titulo'],
                    "descripcion" =>$item['descripcion'],
                );
            }
        }
        return $arrayResponse;
    }

    public function debeSaberToArrayEn()
    {
        $categorys = DB::table('hp_categoria_dsaber')->get();
        $arrayResponse = array();
        foreach ($categorys as $category){
            $debeSaber = $this->where('categoria_dsaber_id','=',$category->id)
                ->get()->toArray();
            foreach ($debeSaber as $item){
                $arrayResponse[$category->nombre_in][] = array(
                    "titulo" =>$item['titulo_in'],
                    "descripcion" =>$item['descripcion_in'],
                );
            }
        }
        return $arrayResponse;
    }
}
