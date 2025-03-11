 <!--SUBDOMAIN MENU-->

<style>
    .navbar {
    width: 100%;
    background-color: rgba(256, 256, 256, 256); /* Semi-transparent navbar */
    color: black;
    display: flex;
    justify-content: space-between;
    padding: 10px 20px;
    position: fixed;
    top: 0;
    z-index: 10; /* Ensures the navbar stays on top */
  }

  .navbar

  .nav-item .nav-link {
      color: black; /* This will make the text color white */
    }
    
    /* Optional: To ensure dropdown items are also white */
    .dropdown-menu .dropdown-item {
      color: white; /* This will make dropdown items text color white */
    }


    .subdomain-menu .navbar-toggler{
    color:#000000;
    }
    .navbar-brand{color:#000000;}


</style>

 <div class="container-fluid">
        <nav class="navbar navbar-expand-lg subdomain-menu row">
            <img src="{{ url($coverPost_urls[0]) }}" style="width:10%">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown m-2">
                        <a class="nav-link" href="{{url('/')}}" id="home" role="button"
                           aria-haspopup="false" aria-expanded="false">
                           
                        </a>
                    </li>
                    
                    <?php
                        $menu_links=[];
                        for($i=0; $i<count($menu_list); $i++) {
                            $menu_content_links=[];
                            $count_submenu = 0;
                            for($j=0; $j<count($menu_content_list); $j++){
                                if($menu_content_list[$j]->menu_id == $menu_list[$i]->id){
                                    array_push($menu_content_links, $menu_content_list[$j]);
                                    $count_submenu++;
                                }
                            }
                     ?>  
                     @if($count_submenu > 1)   
                        <li class="nav-item dropdown">   
                            <a class="dropdown-toggle nav-link" href="#" id="kategori" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                                {{$menu_list[$i]->name}}
                            </a>
                            <div class="dropdown-menu" aria-labelledby="kategori">
                                @for($k=0; $k< sizeof($menu_content_links); $k++)
                                <?php 
                                $category_url = slugify(trans('public.home.category')).'/'.slugify($menu_content_links[$k]->title.' '.$menu_content_links[$k]->id);
                                ?>
                                <a class="dropdown-item" href="{{$category_url}}">{{$menu_content_links[$k]->title}}</a>
                                @endfor
                            </div>
                        </li>    
                    @else
                        <?php 
                            $category_url = slugify(trans('public.home.category')).'/'.slugify($menu_content_links[0]->title.' '.$menu_content_links[0]->id);
                        ?> 
                        <li class="nav-item" style="padding-top:5px;">
                            <a class="nav-link" href="{{$category_url}}">
                                {{$menu_list[$i]->name}}
                            </a>
                        </li>
                        @endif        

                    <?php
                        }
                    ?>

                  
                </ul>
                
            </div>
            
            </nav>
        </div>
                

                   
    <!--SUBDOMAIN MENU-->