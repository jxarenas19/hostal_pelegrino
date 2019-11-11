<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminReservasController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_reservas");
        $this->setPermalink("reservas");
        $this->setPageTitle("Reservas");

        $this->addDate("Fecha Inicio","fecha_ini")->format('d-m-y');
		$this->addDate("Fecha Fin","fecha_fin")->format('d-m-y');
		$this->addEmail("Correo","correo");
		$this->addText("Nombre","nombre")->strLimit(150)->maxLength(255);
		$this->addText("Apellidos","apellidos")->strLimit(150)->maxLength(255);
		$this->addDate("Fecha Nacimiento","fecha_nacimiento")->format('d-m-y');
		$this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addNumber("Número Adultos","numeros_adultos");
		$this->addNumber("Número Niños","numeros_niños");
		$this->addText("Nacionalidad","nacionalidad")->strLimit(150)->maxLength(255);
		$this->addText("Pasaporte","numero_pasaporte")->strLimit(150)->maxLength(255);
		$this->addSelectOption("Género","genero")->options(['male'=>'Masculino','female'=>'Femenino']);
		$this->addSelectTable("Habitación","hp_habitaciones_id",["table"=>"hp_habitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->foreignKey('hostales_id');
		

    }
}
