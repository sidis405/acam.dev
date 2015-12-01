<?php

namespace Acam;

use Illuminate\Foundation\Application;

class AcamApplication extends Application
{
    public function publicPath()
    {
        return $this->basePath.DIRECTORY_SEPARATOR.'../';
    }
}
