<?php

namespace App\Commands\Staff;

use App\Commands\Command;

class CreateStaffCommand extends Command
{
    public $name;
    public $intro;
    public $description;
    public $website;
    public $type_id;
    public $page_id;

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct($name, $intro, $description, $website, $type_id, $page_id)
    {
        $this->name = $name;
        $this->intro = $intro;
        $this->description = $description;
        $this->website = $website;
        $this->type_id = $type_id;
        $this->page_id = $page_id;
    }
}
