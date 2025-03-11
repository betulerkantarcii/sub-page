 <!--SUBDOMAIN MENU-->

 @php
    $currentLocale = \Illuminate\Support\Facades\App::getLocale();
@endphp

  <!--HEADER BAŞLIK-->
  <div class="header-baslik-genel">
        <div class="header-baslik-background2">
            <div class="container">
                <div class="row">
                        <h3 class="text-center w-100 mb-0">{{$category->title}}</h3>
                </div>
            </div>
        </div>
    </div>
    <!--HEADER BAŞLIK-->


 <div class="container-fluid">
        <nav class="navbar navbar-expand-lg subdomain-menu row">
            <img src= "{{ url($coverPost_urls[0]) }}" style="width:9%">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><i class="fas fa-bars"></i></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item dropdown m-2">
                        <a class="nav-link" href="{{url('/')}}" id="home" role="button"
                           aria-haspopup="false" aria-expanded="false">
                           <i class="fa fa-home"></i>
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
                            <a class="nav-link dropdown-toggle" href="" id="kategori" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                {{$menu_list[$i]->name}}
                            </a>
                            <div class="dropdown-menu" aria-labelledby="kategori">
                                @for($k=0; $k< sizeof($menu_content_links); $k++)
                                <?php 
                                    $category_url = slugify($menu_content_links[$k]->title.' '.$menu_content_links[$k]->id);
                                ?>
                                <a class="dropdown-item" href="{{$category_url}}">{{$menu_content_links[$k]->title}}</a>
                                @endfor
                            </div>
                        </li>    
                    @else
                        <?php 
                            $category_url = slugify($menu_content_links[0]->title.' '.$menu_content_links[0]->id);
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

                    @foreach($locales as $locale)
                        @if($locale != $currentLocale)
                            <li class="nav-item active">
                                <a class="nav-link" href="{{ route('lang.switch', $locale) }}">{{ strtoupper($locale) }}</a>
                            </li>
                        @endif 
                    @endforeach

                  
                </ul>
                
            </div>
            
            </nav>
            </div>
                
<style>
    
.header-baslik-genel{
background-image:url("{{ url($coverPost_urls[2]) }}");
}

</style>
                   
    <!--SUBDOMAIN MENU-->