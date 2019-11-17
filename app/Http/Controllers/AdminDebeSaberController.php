<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminDebeSaberController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_debe_saber");
        $this->setPermalink("debe_saber");
        $this->setPageTitle("Debe Saber");

        $this->addTextArea("Descripción","descripcion")->strLimit(150);
		$this->addText("Título","titulo")->required(false)->strLimit(150)->maxLength(255);
		$this->addTextArea("Description","descripcion_in")->strLimit(150);
		$this->addText("Title","titulo_in")->required(false)->strLimit(150)->maxLength(1250);
		$this->addSelectTable("Categoría","categoria_dsaber_id",["table"=>"hp_categoria_dsaber","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
