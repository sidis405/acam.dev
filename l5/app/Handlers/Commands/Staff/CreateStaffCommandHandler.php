<?php

namespace App\Handlers\Commands\Staff;

use App\Commands\Staff\CreateStaffCommand;
use App\Events\Staff\StaffWasCreated;
use Acam\Models\Staff;
use Acam\Repositories\StaffRepo;
use Event;
use Illuminate\Queue\InteractsWithQueue;

class CreateStaffCommandHandler
{
    public $repo;

    /**
     * Create the command handler.
     *
     * @return void
     */
    public function __construct(StaffRepo $repo)
    {
        $this->repo = $repo;
    }

    /**
     * Handle the command.
     *
     * @param  CreateStaffCommand  $command
     * @return void
     */
    public function handle(CreateStaffCommand $command)
    {

        $staff_object = Staff::make(
            $command->name,
            $command->intro,
            $command->description,
            $command->website,
            $command->type_id,
            $command->page_id
        );


        $staff = $this->repo->save($staff_object);

        Event::fire(new StaffWasCreated($staff));

        return $staff;
    }
}
