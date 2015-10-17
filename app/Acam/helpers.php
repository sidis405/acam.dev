<?php

function carouselIndicators($featured)
{
    $counter = 0;
    $first = true;
    $out = '';
    $active = '';

    foreach ($featured as $media) {
        if ($first) {
            $active = 'active';
            $first=false;
        } else {
            $active = '';
        }

        $out .= '<li data-target="#slideshow" data-slide-to="' .$counter. '" class="'.$active.'"></li>';
        $counter++;
    }

    return $out;
}

        function presentBreadcrumbs($prepends = []){

            $path = \Request::path();

            $out = '';

            $pieces = explode('/', $path);

            $pieces = handlePrepends($prepends, $pieces);


            if(count($pieces) > 1)
            {
                $lastElement = $pieces[0];


                $out .= '<ol class="breadcrumb">';
                 

                foreach ($pieces as $piece) {
                    
                    if($piece !== $lastElement)
                    {
                        $out .=  "<li class='active'>" . ucwords(str_replace('-', ' ', $piece)). "</li>";
                    }
                    else
                    {
                        $out .=  "<li><a href='/" . $piece . "'>" . ucwords(str_replace('-', ' ', $piece)). "</a></li>";
                    }
                  
                }


                $out .= '</ol>';
        


            }

            return $out;

        }

        function handlePrepends($prepends, $pieces)
        {
            if(count($prepends) > 0){

                $total_prepends = count($prepends);

                for($i=$total_prepends-1; $i>= 0 ; $i--){

                    array_unshift($pieces, $prepends[$i]);

                }

            }

            return $pieces;
        }



