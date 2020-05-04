<?php

namespace Acam\Repositories;

use Acam\Models\Staff;
use Acam\Models\StaffTypes;
use Acam\Models\FeaturedImage;
use Acam\Models\StaffPageTypes;

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

    public function pageTypes()
    {
        return StaffPageTypes::all();
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
        return StaffTypes::with('staff.featuredImage', 'staff')->get();
    }

    public function getAllByPage($page_id)
    {
        return StaffPageTypes::whereId($page_id)->with('staff.featuredImage', 'staff.type')->first();
    }

    public function getAll($howMany = null)
    {
        if ($howMany) {
            return Staff::with('media', 'featuredImage', 'pageType')->orderBy('position', 'ASC')->simplePaginate($howMany);
        }

        return Staff::with('media', 'featuredImage', 'pageType')->orderBy('position', 'ASC')->get();
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
