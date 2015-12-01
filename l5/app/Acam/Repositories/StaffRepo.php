<?php

namespace Acam\Repositories;

use Acam\Models\FeaturedImage;
use Acam\Models\Staff;
use Acam\Models\StaffTypes;

/**
* Staff Repo
*/
class StaffRepo
{
    public function save(Staff $staff)
    {
        $staff->save();

        return $staff;
    }

    public function types()
    {
        return StaffTypes::all();
    }

    public function remove($id)
    {
        $staff = Staff::find($id);
        $staff->delete();

        return true;
    }

    public function removeImage($id)
    {
        $image = FeaturedImage::find($id);
        $image->delete();

        return true;
    }

    public function getAllByType()
    {
        return StaffTypes::with('staff.featuredImage')->get();
    }

    public function getAll($howMany = null)
    {
        if ($howMany) {
            return Staff::with('media', 'featuredImage')->orderBy('position', 'ASC')->simplePaginate($howMany);
        } else {
            return Staff::with('media', 'featuredImage')->orderBy('position', 'ASC')->get();
        }
    }

    public function getBySlug($slug)
    {
        return Staff::with('media', 'featuredImage')->whereSlug($slug)->first();
    }

    public function getById($id)
    {
        return Staff::with('media', 'featuredImage')->whereId($id)->first();
    }

    public function getMediaForId($id)
    {
        $staff = $this->getById($id);
        
        return $staff->getMedia();
    }
}
