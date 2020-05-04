<?php

namespace Acam\Repositories;

use Acam\Models\Pages;
use Acam\Models\FeaturedImage;

/**
 *   PagesRepo
 */
class PagesRepo
{
    public function getAll()
    {
        return Pages::all();
    }

    public function getBySlug($slug)
    {
        return Pages::whereSlug($slug)->first();
    }

    public function getById($id)
    {
        return Pages::with('media', 'featuredImage')->whereId($id)->first();
    }

    public function getMediaForId($id)
    {
        $page = $this->getById($id);

        return $page->getMedia();
    }

    public function removeImage($id)
    {
        $image = FeaturedImage::find($id);
        $image->delete();

        return true;
    }
}
