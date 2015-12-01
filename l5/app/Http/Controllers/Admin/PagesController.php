<?php

namespace App\Http\Controllers\Admin;

use Acam\Repositories\PagesRepo;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class PagesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(PagesRepo $pages_repo)
    {
        $pages = $pages_repo->getAll();

        return view('admin.pages.index', compact('pages'));

    }
    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id, PagesRepo $pages_repo)
    {
        
        $page = $pages_repo->getByid($id);

        return view('admin.pages.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id, PagesRepo $pages_repo)
    {
        $page = $pages_repo->getByid($id);

        $page->update(
            [
                'content' => $request->input('content'),
                'title' => $request->input('title'),
                'featured_image_id' => $request->input('featured_image_id')
            ]
        );

        flash()->success('Pagina modificata con successo.');

        return redirect()->to('/admin/pagine/' . $page->id . '/modifica');

    }

}
