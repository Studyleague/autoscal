<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CarInsuarance;
use App\Models\CarLoan;
use App\Models\CarTransfer;

class InsuaranceController extends Controller
{
    public function insuarance()
    {
        CarInsuarance::where('flag','0')->update(['flag'=>1]);
        $insuarance = CarInsuarance::latest()->get();
        return view('admin.car_insuarance')->with('insuarance',$insuarance);
    }

    public function loan()
    {
        CarLoan::where('flag','0')->update(['flag'=>1]);
        $insuarance = CarLoan::latest()->get();
        return view('admin.car_loan')->with('insuarance',$insuarance);
    }

    public function transfer()
    {
        CarTransfer::where('flag','0')->update(['flag'=>1]);
        $insuarance = CarTransfer::latest()->get();
        return view('admin.car_transfer')->with('insuarance',$insuarance);
    }
}
