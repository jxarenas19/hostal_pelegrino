<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminHostalesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_hostales");
        $this->setPermalink("hostales");
        $this->setPageTitle("Hostal");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Pequeña Descripción","mini_descripcion")->strLimit(150)->maxLength(255);
		$this->addTextArea("Descripción","descripcion")->strLimit(150);
		$this->addText("Dirección","direccion")->strLimit(150)->maxLength(255);
		$this->addText("Teléfono","tel")->strLimit(150)->maxLength(255);
		$this->addText("Latitud","lat")->strLimit(150)->maxLength(255);
		$this->addText("Longitud","lng")->strLimit(150)->maxLength(255);
		$this->addEmail("Correo","email");
		$this->addText("Short Description","mini_descripcion_in")->strLimit(150)->maxLength(255);
		$this->addTextArea("Description","descripcion_in")->strLimit(150);
		$this->addText("Address","direccion_in")->strLimit(150)->maxLength(255);

//        $this->form[] = ['label'=>'Address','name'=>'direccion_in','type'=>'googlemaps'];

    }
}
