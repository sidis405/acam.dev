<?php

namespace App\Http\Controllers;

use Acam\Repositories\ActivitiesRepo;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class ActivitiesController extends Controller
{
    
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug, ActivitiesRepo $repo)
    {
        $activity = $repo->getBySlug($slug);

        if(!$activity) abort(404);

        // return $activity;

        return view('activities.show', compact('activity'));

    }
}
