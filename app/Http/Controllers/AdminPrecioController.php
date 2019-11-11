<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminPrecioController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_precio");
        $this->setPermalink("precio");
        $this->setPageTitle("Precio");

        $this->addSelectTable("Hostal","hostales_id",["table"=>"hp_hostales","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addSelectTable("Habitación","habitaciones_id",["table"=>"hp_habitaciones","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->foreignKey('hostales_id');
		$this->addSelectTable("Temporada","temporada_id",["table"=>"hp_temporada","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		$this->addMoney("Precio","precio");
		

    }
}
