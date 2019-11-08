<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTipoDeHabitaciónController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_thabitaciones");
        $this->setPermalink("tipo_de_habitacion");
        $this->setPageTitle("Tipo de habitación");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Descripción","descripcion")->strLimit(150)->maxLength(255);
		

    }
}
