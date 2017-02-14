<?php

namespace Acam\Models;

use Illuminate\Database\Eloquent\Model;

class StaffPageTypes extends Model
{
    public function staff()
    {
        return $this->hasMany('Acam\Models\Staff', 'page_id');
    }
}
