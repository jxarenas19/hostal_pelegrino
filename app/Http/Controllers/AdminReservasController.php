<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminReservasController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_reservas");
        $this->setPermalink("reservas");
        $this->setPageTitle("Reservas");

        $this->addDate("Fecha Inicio","fecha_ini");
		$this->addDate("Fecha Fin","fecha_fin");
		$this->addEmail("Correo","correo");
		$this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Apellidos","apellidos")->strLimit(150)->maxLength(255);
		$this->addDate("Fecha Nacimiento","fecha_nacimiento");
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addNumber("Números Adultos","numeros_adultos");
		$this->addNumber("Números Niños","numeros_niños");
		$this->addText("Nacionalidad","nacionalidad")->strLimit(150)->maxLength(255);
		$this->addText("Número Pasaporte","numero_pasaporte")->strLimit(150)->maxLength(255);
		$this->addText("Género","genero")->strLimit(150)->maxLength(255);
		$this->addSelectTable("Habitación","hp_habitaciones_id",["table"=>"hp_habitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
