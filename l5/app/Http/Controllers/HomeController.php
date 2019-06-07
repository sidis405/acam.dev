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
        $activities = $activities_repo->getAllFront(9);
        $featured = $activities_repo->getFeatured();
        $texts = $text_repo->getAll();

        // return $activities;

        return view('home.index', compact('activities', 'featured', 'texts'));
    }

    public function loadMoreActivities(ActivitiesRepo $activities_repo)
    {
        $activities = $activities_repo->getAllFront(9);

        return [
            'layout' => view('home.partials.activities-partial', compact('activities'))->render(), 
            'url' => str_replace('/?', '?', $activities->nextPageUrl()),
            'more' => $activities->hasMorePages(), 
            'galleries' => view('home.partials.activities-partial', compact('activities'))->render()];
    }

    public function policy()
    {
        return view('home.privacy');
    }
    public function cookie()
    {
        return view('home.cookie');
    }

    public function pull()
    {
        $out = '';
        $result = array();
        $result = shell_exec("/usr/bin/git -c /home/www/sidrit.com/acam.dev pull 2>&1");
        return $result;
    }
}
