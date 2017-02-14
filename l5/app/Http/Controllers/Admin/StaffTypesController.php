<?php

namespace App\Http\Controllers\Admin;

use App\Http\Requests;
use Acam\Models\StaffTypes;
use Illuminate\Http\Request;
use Acam\Repositories\StaffRepo;
use App\Http\Controllers\Controller;

class StaffTypesController extends Controller
{

    public function edit(StaffRepo $repo)
    {
        $types = $repo->types();

        return view('admin.types.edit', compact('types'));
    }

    public function update(Request $request, StaffRepo $repo)
    {
        $input = $request->get('types');

        // return $input;

        foreach ($input as $id => $value) {
            StaffTypes::where('id', $id)->update(['name'=>$value]); 
        }

        flash()->success('Titoli modificati con successo.');

        return redirect()->to('/admin/titoli');
    }
}
