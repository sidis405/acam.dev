<?php

namespace Acam\Repositories;

use App\Acam\Models\PagesText;

/**
* PagesText Repo
*/
class TextRepo
{

    public function updateText($id, $data)
    {
        $text = PagesText::find($id);
        $text->update(['value' => $data->input('value')]);
        $text->save();

        return $text;
    }

    public function save(PagesText $text)
    {
        $text->save();

        return $text;
    }

    public function getAll($howMany = null)
    {
        $texts = PagesText::orderBy('created_at', 'ASC')->get();

        return $this->makeAssocArray($texts, 'name');

    }

    public function makeAssocArray($obj, $key)
    {
        $out = [];

        foreach ($obj as $item) {
            $out[$item[$key]] = $item;
        }

        return $out;

    }

    public function getBySlug($slug)
    {
        return PagesText::whereSlug($slug)->first();
    }

    public function getById($id)
    {
        return PagesText::whereId($id)->first();
    }
}
