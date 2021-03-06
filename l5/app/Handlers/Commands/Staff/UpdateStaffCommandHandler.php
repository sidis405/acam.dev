<?php

namespace App\Handlers\Commands\Staff;

use App\Commands\Staff\UpdateStaffCommand;
use App\Events\Staff\StaffWasUpdated;
use Acam\Models\Staff;
use Acam\Repositories\StaffRepo;
use Event;
use Illuminate\Queue\InteractsWithQueue;

class UpdateStaffCommandHandler
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
     * @param  UpdateStaffCommand  $command
     * @return void
     */
    public function handle(UpdateStaffCommand $command)
    {
        $staff_object = Staff::edit(
            $command->staff_id,
            $command->name,
            $command->intro,
            $command->description,
            $command->featured_image_id,
            $command->website,
            $command->type_id,
            $command->page_id
        );

        $staff = $this->repo->save($staff_object);

        Event::fire(new StaffWasUpdated($staff));

        return $staff;
    }
}
