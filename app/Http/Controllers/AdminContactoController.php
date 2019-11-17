<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminContactoController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_contacto");
        $this->setPermalink("contacto");
        $this->setPageTitle("Contacto");

        $this->addText("Dirección","direccion")->strLimit(150)->maxLength(255);
		$this->addText("Address","direccion_in")->strLimit(150)->maxLength(255);
		$this->addText("Teléfono(s)","phones")->strLimit(150)->maxLength(255);
		$this->addText("Email(s)","emails")->strLimit(150)->maxLength(255);
		

    }
}
