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
		$this->addTextArea("Descripción","descripcion")->strLimit(150);
		$this->addText("Dirección","direccion")->strLimit(150)->maxLength(255);
		$this->addText("Teléfono","tel")->strLimit(150)->maxLength(255);
		$this->addText("Latitud","lat")->showDetail(false)->showAdd(false)->showEdit(false)->strLimit(150)->maxLength(255);
		$this->addText("Longitud","lng")->showDetail(false)->showAdd(false)->showEdit(false)->strLimit(150)->maxLength(255);
		$this->addEmail("Correo","email");
		$this->addText("Short Description","mini_descripcion_in")->strLimit(150)->maxLength(255);
		$this->addTextArea("Description","descripcion_in")->strLimit(150);
		$this->addText("Address","direccion_in")->strLimit(150)->maxLength(255);
        $this->addCustom("Custom Field")->setHtml(
        "<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d69836.48767873546!2d-82.39082323476183!3d23.08936342442314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1ses-419!2scu!4v1573331666623!5m2!1ses-419!2scu\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>"
    );
//        $this->form[] = ['label'=>'Address','name'=>'direccion_in','type'=>'googlemaps'];

    }
    public function hook_before_add(&$postdata) {
        //For example you want to override the status field
        $postdata['status'] = 'Active';
    }
}
