<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminHabitacionesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_habitaciones");
        $this->setPermalink("habitaciones");
        $this->setPageTitle("Habitaciones");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Descripción","descripcion")->strLimit(150)->maxLength(255);
		$this->addSelectTable("Tipo de Habitaciones","thabitaciones_id",["table"=>"hp_thabitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
