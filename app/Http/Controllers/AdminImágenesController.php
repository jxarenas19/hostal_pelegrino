<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminImágenesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_images");
        $this->setPermalink("imagenes");
        $this->setPageTitle("Imágenes");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Descripción","descripcion")->strLimit(150)->maxLength(255);
		$this->addText("Url","url")->strLimit(150)->maxLength(255);
		$this->addCheckbox("Principal","principal")->options(['valor'=>'True']);
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addSelectTable("Habitación","habitaciones_id",["table"=>"hp_habitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
