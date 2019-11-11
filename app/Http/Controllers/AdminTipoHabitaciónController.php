<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTipoHabitaciónController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_thabitaciones");
        $this->setPermalink("tipo_habitacion");
        $this->setPageTitle("Tipo Habitación");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Descripción","descripcion")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Description","descripcion_in")->required(false)->strLimit(150)->maxLength(255);
		$this->addText("Name","nombre_in")->strLimit(255)->maxLength(255);
		

    }
}
