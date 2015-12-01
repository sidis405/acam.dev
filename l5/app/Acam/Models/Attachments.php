<?php

namespace Acam\Models;

use Illuminate\Database\Eloquent\Model;

class Attachments extends Model
{

		protected $fillable = ['name', 'path', 'activity_id'];

    public function activity()
    {
    	return $this->belongsTo('Acam\Models\Activities', 'activity_id');
    }
}
