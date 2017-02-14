<?php

namespace App\Commands\Staff;

use App\Commands\Command;

class UpdateStaffCommand extends Command
{
    public $name;
    public $intro;
    public $description;
    public $featured_image_id;
    public $staff_id;
    public $website;
    public $type_id;
    public $page_id;

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct($staff_id, $name, $intro, $description, $website, $type_id, $featured_image_id = null, $page_id)
    {
        $this->name = $name;
        $this->intro = $intro;
        $this->description = $description;
        $this->featured_image_id = $featured_image_id;
        $this->staff_id = $staff_id;
        $this->website = $website;
        $this->type_id = $type_id;
        $this->page_id = $page_id;
    }
}
