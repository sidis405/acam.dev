<?php

namespace App\Http\Controllers;

use Acam\Models\StaffPageTypes;
use Acam\Repositories\ActivitiesRepo;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

abstract class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    function __construct(ActivitiesRepo $activities_repo) {
        view()->share('types', $activities_repo->types(true));
        view()->share('pageTypes', StaffPageTypes::all());
    }
}
