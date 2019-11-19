<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Contacto extends Model
{
    protected $table = 'hp_contacto';

    public function contactoArrayEs()
    {
        return array(
          "direccion" => $this->all()->first()->direccion,
          "phones" => $this->all()->first()->phones,
          "emails" => $this->all()->first()->emails,
        );
    }

    public function contactoArrayEn()
    {
        return array(
            "direccion" => $this->all()->first()->direccion_in,
            "phones" => $this->all()->first()->phones,
            "emails" => $this->all()->first()->emails,
        );
    }
}
