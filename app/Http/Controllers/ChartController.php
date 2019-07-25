<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Charts\TestChart;
use App\employee;

class ChartController extends Controller
{
  public function __construct()
  {
      $this->middleware('updation')->only('delete','update', 'store');
  }



   public function index(){

   	$power = employee::all()->where('division_id',1)->count();
   	$water = employee::all()->where('division_id',2)->count();
   	$finance = employee::all()->where('division_id',3)->count();

    $chart = new TestChart;
    $chart->labels(['Power', 'Water', 'Finance']);
    $chart->dataset('My dataset', 'pie', [$power, $water, $finance])
    ->backgroundColor(['red','#008000','#00FFFF']);
    //->title("Department");
     return view('chart', compact('chart'));
	}
}
