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

      return view('hr.reports.charts');
    }

    public function age(){

      $countAboveSixty= employee::where('date_of_birth','<',\Carbon\Carbon::now()->subYears(60))->where('employee_status_id',1)->count();
      $countBelowSixty = employee::where('employee_status_id',1)
                        ->count()-$countAboveSixty;
      return view('hr.reports.charts.ageChart', compact('countAboveSixty','countBelowSixty'));

    }


   public function division(){

   	$power = employee::all()->where('division_id',1)->count();
   	$water = employee::all()->where('division_id',2)->count();
   	$finance = employee::all()->where('division_id',3)->count();

    $chart = new TestChart;
    $chart->labels(['Power', 'Water', 'Finance']);
    $chart->dataset('My dataset', 'pie', [$power, $water, $finance])
    ->backgroundColor(['rgba(255, 99, 132, 0.4)','rgba(255, 205, 86, 0.4)','rgba(75, 192, 192, 0.4)']);
    //->title("Department");
     return view('hr.reports.charts.divisionChart', compact('chart'));
	}

}
