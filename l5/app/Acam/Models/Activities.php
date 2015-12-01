<?php

namespace App\Acam\Models;

use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;

class Activities extends Model implements HasMedia
{
    protected $guarded = ['id', 'created_at', 'updated_at'];

    use PresentableTrait, HasMediaTrait;

    protected $presenter = 'Acam\Presenters\ActivityPresenter';

    public function attachments()
    {
        return $this->hasMany('Acam\Models\Attachments', 'activity_id');
    }

    public function status()
    {
        return $this->belongsTo('Acam\Models\ActivitiesStatus', 'status_id');
    }

    public function type()
    {
        return $this->belongsTo('Acam\Models\ActivitiesTypes', 'type_id');
    }

    public function featuredImage()
    {
        return $this->belongsTo('Acam\Models\FeaturedImage', 'featured_image_id');
    }

    public function coverImage()
    {
        return $this->belongsTo('Acam\Models\FeaturedImage', 'cover_image_id');
    }

    public static function make($title, $slug, $subtitle, $description, $featured)
    {
        $activity = new static(compact('title', 'slug', 'subtitle', 'description', 'featured'));

        return $activity;
    }

    public static function edit(
        $activity_id, 
        $title, $slug, $subtitle, $description, $featured, $status_id, $type_id, $featured_image_id, $cover_image_id)
    {
 
        // if ($featured == 'OFF') {
        //     $featured_image_id = null;
        // }

        $activity = static::find($activity_id);

        $activity->title                = $title;
        $activity->slug                 = $slug;
        $activity->subtitle             = $subtitle;
        $activity->description          = $description;
        $activity->status_id            = $status_id;
        $activity->type_id              = $type_id;
        $activity->featured_image_id    = $featured_image_id;
        $activity->cover_image_id       = $cover_image_id;
        $activity->featured             = $featured;

        return $activity;
    }
}
