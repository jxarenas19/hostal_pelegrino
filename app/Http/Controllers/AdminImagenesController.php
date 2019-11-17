<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminImagenesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_images");
        $this->setPermalink("imagenes");
        $this->setPageTitle("Imagenes");
        $this->addImage("Photo","photo")->resize(360, 240);
        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Descripción","descripcion")->strLimit(150)->maxLength(255);

		$this->addRadio("Principal","principal")->options([
            "1"  => "True",
            "0" => "False"
        ])->required(false);
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->required(false);
		$this->addSelectTable("Habitación","habitaciones_id",["table"=>"hp_habitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->required(false);

		

    }
}
