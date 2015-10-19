<?php

namespace Acam\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Rutorika\Sortable\SortableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;

class Staff extends Model implements HasMedia
{

    use PresentableTrait, HasMediaTrait, SortableTrait;


    protected $fillable = ['name', 'intro', 'description', 'order', 'website', 'type_id'];

    protected $presenter = 'Acam\Presenters\StaffPresenter';

    public function featuredImage()
    {
        return $this->belongsTo('Acam\Models\FeaturedImage', 'featured_image_id');
    }

    public static function make($name, $intro, $description, $website, $type_id)
    {   

        if(strpos($website, 'http:') < 0) $website = 'http://' . $website;
        
        $staff = new static(compact('name', 'intro', 'description', 'website', 'type_id'));

        return $staff;
    }

    public static function edit($staff_id, $name, $intro, $description, $featured_image_id, $website, $type_id)
    {
        $staff = static::find($staff_id);


        if(! strpos($website, 'http:') < 0) $website = 'http://' . $website;

        $staff->name                 = $name;
        $staff->intro                = $intro;
        $staff->description          = $description;
        $staff->featured_image_id    = $featured_image_id;
        $staff->website                = $website;
        $staff->type_id              = $type_id;
    
        return $staff;
    }
}
