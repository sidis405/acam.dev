<?php

namespace App\Http\Controllers\Admin;

use Acam\Repositories\ActivitiesRepo;
use Acam\Models\Attachments;
use Acam\Utils\Uploads as Up;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use Illuminate\Http\Request;

class AttachmentsController extends Controller
{

    protected $up;

    public function store(Request $request, ActivitiesRepo $activities_repo)
    {

        if($request->file('file'))
        {
            $activity = $activities_repo->getById($request->input('activity_id'));

            $this->up = new Up;

            $path = $this->up->uploadAttachment($request->file('file'));

            $activity->attachments()->create([
                'name' => $request->input('name'),
                'activity_id' => $request->input('activity_id'),
                'path' => $path
                ]);

            flash()->success('Allegato caricato con successo.');
            return redirect('/admin/attivita/' .$request->input('activity_id').'/modifica');
        }
        
        flash()->error('Il file è obligatorio.');
        return redirect()->back();

    }

    public function delete($id)
    {
        $attachment = Attachments::find($id);

        unlink(public_path().$attachment->path);

        $attachment->delete();

        flash()->success('Allegato rimosso con successo.');
        return redirect()->back();
    }


}
