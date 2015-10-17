<?php

namespace App\Http\Controllers;

use Acam\Repositories\PagesRepo;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class PagesController extends Controller
{

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($slug, PagesRepo $pages_repo)
    {
        $pages = array_pluck($pages_repo->getAll()->toArray(), 'slug');

        if(!in_array($slug, $pages)) abort(404);

        $page = $pages_repo->getBySlug($slug);

        return view('pages.show', compact('page'));
    }
}
