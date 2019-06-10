<?php

namespace Acam\Models;

use Rutorika\Sortable\SortableTrait;
use Illuminate\Database\Eloquent\Model;
use Laracasts\Presenter\PresentableTrait;
use Spatie\MediaLibrary\HasMedia\HasMediaTrait;
use Spatie\MediaLibrary\HasMedia\Interfaces\HasMedia;

class Pages extends Model implements HasMedia
{
    protected $fillable = ['name', 'slug', 'content', 'featured_image_id', 'title'];

    use PresentableTrait, HasMediaTrait, SortableTrait;

    protected $presenter = 'Acam\Presenters\PagesPresenter';

    public function featuredImage()
    {
        return $this->belongsTo('Acam\Models\FeaturedImage', 'featured_image_id');
    }

    public static function make($name, $slug, $content)
    {
        $page = new static(compact('name', 'slug', 'content'));

        return $page;
    }

    public static function edit($page_id, $name, $slug, $content)
    {
        $page = static::find($page_id);

        $page->name                 = $name;
        $page->slug                 = $slug;
        $page->content              = $content;
        $page->featured_image_id    = $featured_image_id;

        return $page;
    }
}
