<?php

namespace Acam\Models;

use Illuminate\Database\Eloquent\Model;

class StaffTypes extends Model
{
    public function staff()
    {
        return $this->hasMany('Acam\Models\Staff', 'type_id');
    }
}
