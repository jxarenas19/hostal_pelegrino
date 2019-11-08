<?php namespace App\Http\Controllers;

use crocodicstudio\crudbooster\helpers\CRUDBooster;
use Illuminate\Support\Facades\DB;

class AdminCustomController extends Controller  {


    public function getIndex() {
        //First, Add an auth
      //  if(!CRUDBooster::isView()) CRUDBooster::redirect(CRUDBooster::adminPath(),trans('crudbooster.denied_access'));

        //Create your own query
        $data = [];
        $data['page_title'] = 'Custom repo';
      //  $data['result'] = DB::table('products')->orderby('id','desc')->paginate(10);

        //Create a view. Please use `cbView` method instead of view method from laravel.
        return view('your_custom_view_index',$data);
    }
}
