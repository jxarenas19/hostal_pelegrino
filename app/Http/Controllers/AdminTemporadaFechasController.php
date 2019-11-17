<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTemporadaFechasController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_temp_fechas");
        $this->setPermalink("temporada_fechas");
        $this->setPageTitle("Temporada Fechas");

        $this->addDate("Fecha Inicio","fecha_inicio")->format('Y-m-d');
		$this->addDate("Fecha Fin","fecha_fin")->format('Y-m-d');
		$this->addSelectTable("Temporada","temporada_id",["table"=>"hp_temporada","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""]);
		

    }
}
