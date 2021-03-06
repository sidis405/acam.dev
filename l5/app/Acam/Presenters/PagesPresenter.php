<?php

namespace Acam\Presenters;

use Laracasts\Presenter\Presenter;

class PagesPresenter extends Presenter
{


    public function featuredImageUrl()
    {
        if ($this->featuredImage) {
            return "/uploads/" . $this->featuredImage->id ."/". $this->featuredImage->file_name . "?w=343&h=278&fit=crop";
        }

        return "/img/activity-holder.jpg";
    }
}
