<?php

namespace Acam\Models;

use Illuminate\Database\Eloquent\Model;

class CoverImage extends Model
{
    protected $table = 'media';

    public function activities()
    {
        return $this->hasMany('Acam\Models\Activity', 'featured_image_id');
    }
}
