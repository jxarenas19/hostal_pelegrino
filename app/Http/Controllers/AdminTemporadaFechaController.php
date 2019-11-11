<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\controllers\CBController;

class AdminTemporadaFechaController extends CBController {


    public function cbInit()
    {
        $this->setTable("hp_temp_fechas");
        $this->setPermalink("temporada_fecha");
        $this->setPageTitle("Temporada Fecha");

        $this->addDate("Fecha Inicio","fecha_inicio")->format('d-m-y');
		$this->addDate("Fecha Fin","fecha_fin")->format('d-m-y');
		$this->addSelectTable("Temporada","hp_temporada_id",["table"=>"hp_temporada","value_option"=>"id","display_option"=>"nombre","sql_condition"=>""])->filterable(true);
		

    }
}
