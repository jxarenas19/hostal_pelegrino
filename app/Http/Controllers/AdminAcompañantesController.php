<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminAcompañantesController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_acompañantes");
        $this->setPermalink("acompanantes");
        $this->setPageTitle("Acompañantes");

        $this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Apellidos","apellidos")->strLimit(150)->maxLength(255);
		$this->addText("Nacionalidad","nacionalidad")->strLimit(150)->maxLength(255);
		$this->addDate("Fecha Nacimiento","fecha_nacimiento");
		$this->addSelectOption("Género","genero")->options(['sexo'=>'Masculino']);
		$this->addSelectTable("Reserva","hp_reservas_id",["table"=>"hp_reservas","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
