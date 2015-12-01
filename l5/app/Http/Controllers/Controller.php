<?php

namespace App\Http\Controllers;

use Acam\Repositories\ActivitiesRepo;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Routing\Controller as BaseController;

abstract class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    function __construct(ActivitiesRepo $activities_repo) {
        view()->share('types', $activities_repo->types(true));
    }
}
