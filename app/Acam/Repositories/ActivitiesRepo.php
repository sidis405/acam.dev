<?php

namespace Acam\Repositories;

use App\Acam\Models\Activities;
use Acam\Models\ActivitiesStatus;
use Acam\Models\ActivitiesTypes;
use Acam\Models\FeaturedImage;

/**
* Activities Repo
*/
class ActivitiesRepo
{
    public function save(Activities $activity)
    {
        $activity->save();

        return $activity;
    }

    public function remove($id)
    {
        $activity = Activities::find($id);
        $activity->delete();

        return true;
    }

    public function removeImage($id)
    {
        $image = FeaturedImage::find($id);
        $image->delete();

        return true;
    }


    public function statuses()
    {
        return ActivitiesStatus::all();
    }

    public function types($in_menu = false)
    {
        if($in_menu){
            return ActivitiesTypes::where('in_menu', 1)->get();
        }

        return ActivitiesTypes::all();
    }

    public function getFeatured()
    {
        return Activities::with('featuredImage')->whereFeatured('ON')->where('featured_image_id', '>', '0')->latest()->get();
    }

    public function getAll($howMany = null)
    {
        if ($howMany) {
            return Activities::with('type', 'media', 'status', 'featuredImage', 'coverImage')->latest()->simplePaginate($howMany);
        } else {
            return Activities::with('type', 'media', 'status', 'featuredImage', 'coverImage')->latest()->get();
        }
    }

    public function getBySlug($slug)
    {
        return Activities::with('media', 'status', 'featuredImage', 'coverImage')->whereSlug($slug)->first();
    }

    public function getById($id)
    {
        return Activities::with('media', 'status', 'featuredImage', 'coverImage')->whereId($id)->first();
    }

    public function getMediaForId($id)
    {
        $activity = $this->getById($id);
        
        return $activity->getMedia();
    }
}
