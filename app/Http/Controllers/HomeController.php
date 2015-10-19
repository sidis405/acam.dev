<?php

namespace App\Http\Controllers;

use Acam\Repositories\ActivitiesRepo;
use Acam\Repositories\TextRepo;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(ActivitiesRepo $activities_repo, TextRepo $text_repo)
    {
        Session::put('current_page', 'home');
        $activities = $activities_repo->getAll(5);
        $featured = $activities_repo->getFeatured();
        $texts = $text_repo->getAll();

        // return $activities;

        return view('home.index', compact('activities', 'featured', 'texts'));
    }

    public function loadMoreActivities(ActivitiesRepo $activities_repo)
    {
        $activities = $activities_repo->getAll(5);

        return [
            'layout' => view('home.partials.activities-partial', compact('activities'))->render(), 
            'url' => str_replace('/?', '?', $activities->nextPageUrl()),
            'more' => $activities->hasMorePages(), 
            'galleries' => view('home.partials.activities-partial', compact('activities'))->render()];
    }
}
