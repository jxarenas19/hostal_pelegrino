<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTemporadaController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_temporada");
        $this->setPermalink("temporada");
        $this->setPageTitle("Temporada");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Name","nombre_in")->strLimit(150)->maxLength(255);
		

    }
}
