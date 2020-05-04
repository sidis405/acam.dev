<?php

namespace App\Handlers\Commands\Activities;

use App\Commands\Activities\CreateActivityCommand;
use App\Acam\Models\Activities;

use Acam\Repositories\ActivitiesRepo;

use Event;
use App\Events\Activities\ActivityWasCreated;

class CreateActivityCommandHandler
{
    public $repo;

    /**
     * Create the command handler.
     *
     * @return void
     */
    public function __construct(ActivitiesRepo $repo)
    {
        $this->repo = $repo;
    }

    /**
     * Handle the command.
     *
     * @param  CreateActivityCommand  $command
     * @return void
     */
    public function handle(CreateActivityCommand $command)
    {
        $position = Activities::max('position') + 1;
        $activity_object = Activities::make(
            $command->title,
            str_slug($command->title, '-'),
            $command->subtitle,
            $command->description,
            strtoupper($command->featured),
            $position
        );

        $activity = $this->repo->save($activity_object);

        Event::fire(new ActivityWasCreated($activity));

        return $activity;
    }
}
