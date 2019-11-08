<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTemporadaController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_temporada");
        $this->setPermalink("temporada");
        $this->setPageTitle("Temporada");

        $this->addDate("Fecha Inicio","fecha_ini");
		$this->addDate("Fecha Fin","fecha_fin");
		$this->addEmail("Correo","correo");
		$this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		

    }
}
