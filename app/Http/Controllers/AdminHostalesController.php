<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminHostalesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_hostales");
        $this->setPermalink("hostales");
        $this->setPageTitle("Hostales");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Pequeña Descripción","mini_descripcion")->strLimit(150)->maxLength(255);
		$this->addText("Descripcion","descripcion")->strLimit(150)->maxLength(255);
		$this->addText("Direccion","direccion")->strLimit(150)->maxLength(255);
		$this->addText("Teléfono","tel")->strLimit(150)->maxLength(255);
		$this->addText("Latitud","lat")->strLimit(150)->maxLength(255);
		$this->addText("Longitud","lng")->strLimit(150)->maxLength(255);
		$this->addEmail("Email","email");
		

    }
}
