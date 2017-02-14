<?php

namespace App\Http\Controllers;

use Acam\Repositories\StaffRepo;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class StaffController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(StaffRepo $staff_repo)
    {
        Session::put('current_page', 'network');

        $all_staff = $staff_repo->getAllByType();

        return view('staff.index', compact('all_staff'));
    }

    public function professionisti(StaffRepo $staff_repo)
    {
        Session::put('current_page', 'network');

        $all_staff = $staff_repo->getAllByPage(1);
        $all_staff = $all_staff->staff->groupBy('type.name');


        return view('staff.index', compact('all_staff'));
    }

     public function studi_societa(StaffRepo $staff_repo)
    {
        Session::put('current_page', 'network');

        $all_staff = $staff_repo->getAllByPage(2);
        $all_staff = $all_staff->staff->groupBy('type.name');


        return view('staff.index', compact('all_staff'));
    }

     public function imprese(StaffRepo $staff_repo)
    {
        Session::put('current_page', 'network');

        $all_staff = $staff_repo->getAllByPage(3);
        $all_staff = $all_staff->staff->groupBy('type.name');


        return view('staff.index', compact('all_staff'));
    }
}
