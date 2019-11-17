<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminServiciosController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_servicios");
        $this->setPermalink("servicios");
        $this->setPageTitle("Servicios");

        $this->addText("Título","titulo")->strLimit(150)->maxLength(255);
		$this->addText("Title","titulo_in")->strLimit(150)->maxLength(255);
		$this->addTextArea("Descripción","descripcion")->strLimit(150);
		$this->addTextArea("Description","descripcion_in")->strLimit(150);
		$this->addText("Precio","precio")->required(false)->strLimit(150)->maxLength(255);
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->required(false);
		

    }
}
