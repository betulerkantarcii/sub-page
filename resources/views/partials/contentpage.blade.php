
@php
    use Illuminate\Support\Facades\App;
    $currentLocale = App::getLocale();
@endphp
<link rel="stylesheet" href="css/stylecontent.css">

<div class="background-container">
<div class="background"></div> <!-- Background image -->

<div class="slideshow-container">
  <!-- Full-width images with number and caption text -->
  @if(count($slider_post) > 0)
  @for($i=count($slider_post)-1; $i>=0; $i--)
  <div class="mySlides fadeon">
    <a href="{{ $slider_post[$i]->link }}"> 
    @if($currentLocale == 'tr')
        <img src="{{ url($sliderPostTR_urls[$i]) }}" style="width:100%"> 
    @else
        <img src="{{ url($sliderPostEN_urls[$i]) }}" style="width:100%"> 
    @endif
    </a>
  </div>
  @endfor
  @else
  <div class="mySlides fadeon">
    <img src="../images/1.png" style="width:100%">
  </div>
  @endif

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<!--<div class="red-line"></div>-->
</div>
<div class="container-mission">
        <div class="card-mission">
            <div class="card-content-mission">
                <h2>{{ $research_post[0]->title }}</h2>
                <p>{!! $research_post[0]->description !!}</p>
                <a href="{{ $research_post[0]->link }}">{{ trans('public.home.learnmore') }}</a>
            </div>
            <div class="card-mission-image"></div>
        </div>
    </div>

<div class="gray-background">
        <div class="container header">
            <div class="header">
                <h1>{{ trans('public.home.newsand') }}</h1>
            </div>
            <div class="cards">
            @if(count($newsandevent_post)>0)
            @for($i=count($newsandevent_post)-1; $i > count($newsandevent_post)-4; $i--)
                <div class="card">
                    <img  src="{{ url($newsandeventPost_urls[$i]) }}" alt="News Image 1">
                    <div class="card-content">
                        @php
                        $eventTime = $newsandevent_post[$i]->published;
                        $e_d = $eventTime->format('d');
                        $e_m = $eventTime->format('m');
                        $e_y = $eventTime->format('Y');
                        @endphp
                        <p>Published: {{ $e_d}}.{{$e_m}}.{{$e_y}}</p>
                        @if($newsandevent_post[$i]->link == "")
                        <h2>{{ $newsandevent_post[$i]->heading }}</h2>
                        @else
                        <h2><a href="{{ $newsandevent_post[$i]->link }}">{{ $newsandevent_post[$i]->heading }}</a></h2>
                        @endif
                        <p> {{ $newsandevent_post[$i]->info }} </p>
                    </div>
                </div>
            @endfor
            @endif
            </div>
        </div>
        <div class="row justify-content-center">
                <a href="https://cita.agu.edu.tr/category/news--events-11"> 
                <button type="button" class="btn btn-dark">{{ trans('public.home.more') }}</button>
            </a>
            </div>
    </div>
    <div class="another">
    <div class="card-video">
        <div class="video-container">
            <iframe src="{{ url($videolink_post->link) }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
    </div>

</div>


<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slides[slideIndex-1].style.display = "block";  
}
</script>

<style>
.background {
    background-image:url("{{ url($coverPost_urls[1]) }}"); /* Set your background image here */
    background-size: cover;
    background-position: center;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* Ensures the background is behind the content */
}

.card-mission-image {
    flex: 1;
    background-image: url("{{ url($researchPost_urls[0]) }}"); /* Set your background image here */
    background-size: cover;
    background-position: center;
}
</style>