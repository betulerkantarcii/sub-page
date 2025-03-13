<?php

namespace App\Http\Controllers;


use App\Models\Menu;
use App\Models\MenuContent;
use App\Models\Template;
use App\Models\ChoiceOfTemplate;
use App\Models\Main;
use App\Models\EventCalendar;
use App\Models\Slider;
use App\Models\Research;
use App\Models\Newsandevent;
use App\Models\Videolink;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    protected $user;

    public function __construct()
    {
        $this->middleware(function ($request, $next) {

            //$this->user = auth('admin')->user();

            return $next($request);
        });
    }

    public function index()
    {

        $main_post = $this->getMain();
        $menu_list = $this->getMenus();
        $template_data = $this->getTemplates();
        $menu_content_list = $this->getMenuContent();
        $dataEtkinlik = $this->getEtkinlik(); 
        $slider_post = $this->getSlider();
        $research_post = $this->getResearch();
        $newsandevent_post = $this->getNewsandevent();
        $videolink_post = $this->getVideolink();



        $slider_post_count = count($slider_post);

        $sliderPostTR_urls = [];
        for($i=0; $i<$slider_post_count; $i++){
            $sliderPost=$slider_post[$i]->getMedia('coverTR');
            if (isset($sliderPost[0])) {
                foreach ($sliderPost as $c) {
                    $url = $c->getUrl();
                    $sliderPostTR_urls[] = $url;
                }
            }
        }

        $sliderPostEN_urls = [];
        for($i=0; $i<$slider_post_count; $i++){
            $sliderPost=$slider_post[$i]->getMedia('coverEN');
            if (isset($sliderPost[0])) {
                foreach ($sliderPost as $c) {
                    $url = $c->getUrl();
                    $sliderPostEN_urls[] = $url;
                }
            }
        }

        $researchPost_urls = [];
        $researchPost=$research_post[0]->getMedia('cover');
        if (isset($researchPost[0])) {
            foreach ($researchPost as $c) {
                $url = $c->getUrl();
                $researchPost_urls[] = $url;
            }
        }

        $newsandeventPost_urls = [];
        $newsandevent_post_count = count($newsandevent_post);
        $newsandeventPost_urls = [];
        for($i=0; $i<$newsandevent_post_count; $i++){
            $newsandeventPost=$newsandevent_post[$i]->getMedia('cover');
            if (isset($newsandeventPost[0])) {
                foreach ($newsandeventPost as $c) {
                    $url = $c->getUrl();
                    $newsandeventPost_urls[] = $url;
                }
            }
        }

        $max_post = count($main_post);
        $coverPost_urls = [];
        for($i=0; $i<$max_post; $i++){
            $coverPost=$main_post[$i]->getMedia('cover');
            if (isset($coverPost[0])) {
                foreach ($coverPost as $c) {
                    $url = $c->getUrl();
                    $coverPost_urls[] = $url;
                }
            }
        }
        

        return view('index',[
            'main_post' => $main_post,
            'slider_post' => $slider_post,
            'research_post' => $research_post,
            'researchPost_urls' => $researchPost_urls,
            'newsandevent_post' => $newsandevent_post,
            'newsandeventPost_urls' => $newsandeventPost_urls,
            'videolink_post' => $videolink_post,
            'menu_list' => $menu_list,
            'template_data' => $template_data,
            'menu_content_list' => $menu_content_list,
            'coverPost_urls' => $coverPost_urls,
            'sliderPostTR_urls' => $sliderPostTR_urls,
            'sliderPostEN_urls' => $sliderPostEN_urls,
            'dataEtkinlik' => $dataEtkinlik,
            
        ]);

    }



    public function listByCategory($category_slug=null, $slug=null)
    {

        $main_post = $this->getMain();
        $menu_list = $this->getMenus();
        $menu_content_list = $this->getMenuContent();
        $template_data = $this->getTemplates();
        
        $category_id = $this->getId($slug);
        $category=$this->getCategory($category_id);


        $max_post = count($main_post);
        $coverPost_urls = [];
        for($i=0; $i<$max_post; $i++){
            $coverPost=$main_post[$i]->getMedia('cover');
            if (isset($coverPost[0])) {
                foreach ($coverPost as $c) {
                    $url = $c->getUrl();
                    $coverPost_urls[] = $url;
                }
            }
        }



        return view('listByCategory',[
            'main_post' => $main_post,
            'menu_list' => $menu_list,
            'menu_content_list' => $menu_content_list,
            'template_data' => $template_data,
            'category' => $category,
            'coverPost_urls' => $coverPost_urls,

        ]);

    }




    function getSlider()
    {
        $query = Slider::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }

    function getResearch()
    {
        $query = Research::get();
        return $query;
    }

    function getNewsandevent()
    {
        $query = Newsandevent::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }

    function getVideolink()
    {
        $query = Videolink::first();
        return $query;
    }

    function getMenus()
    {
        $query = Menu::get();
        return $query;
    }

    function getTemplates()
    {
        $query = ChoiceOfTemplate::first();
        return $query;
    }

    function getMenuContent()
    {
        $query = MenuContent::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }



    function getMain()
    {
        $query = Main::where('enabled', true);
        $query->orderBy('id', 'ASC');
        return $query->get();
    }


    function getCategory($category_id)
    {
        $query = MenuContent::where('id', $category_id);
        $query->orderBy('id', 'ASC');
        return $query->first();
    }


    function getEtkinlik()
    {
        $query = EventCalendar::where('enabled', true);

        $query->orderBy('id', 'ASC');

        return $query->get();



    }
    
    

    function getId($text)
    {
        $texts = explode('-', $text);

        return $texts[sizeof($texts) - 1];
    }

    function isAdmin(): bool
    {
        //$admin = isset($this->user) ? $this->user->roles()->where('name', 'Administrator')->first() : null;

        //return $admin != null;
    }



   


}
