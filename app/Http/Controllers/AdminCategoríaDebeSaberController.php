<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminCategoríaDebeSaberController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_categoria_dsaber");
        $this->setPermalink("categoria_debe_saber");
        $this->setPageTitle("Categoría Debe Saber");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Name","nombre_in")->strLimit(150)->maxLength(255);
		

    }
}
