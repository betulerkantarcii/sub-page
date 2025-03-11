<div class="sidebar">
    <nav class="sidebar-nav">
        <ul class="nav">
        <!--    <li class="nav-title">{{ trans('brackets/admin-ui::admin.sidebar.content') }}</li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/choice-of-templates') }}"><i class="nav-icon icon-diamond"></i> {{ trans('admin.choice-of-template.title') }}</a></li> -->
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/mains') }}"><i class="nav-icon icon-diamond"></i> {{ trans('admin.main.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/menus') }}"><i class="nav-icon icon-diamond"></i> {{ trans('admin.menu.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/menu-contents') }}"><i class="nav-icon icon-book-open"></i> {{ trans('admin.menu-content.title') }}</a></li>
        <!--   <li class="nav-item"><a class="nav-link" href="{{ url('admin/event-calendars') }}"><i class="nav-icon icon-flag"></i> {{ trans('admin.event-calendar.title') }}</a></li> -->
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/research') }}"><i class="nav-icon icon-umbrella"></i> {{ trans('admin.research.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/sliders') }}"><i class="nav-icon icon-plane"></i> {{ trans('admin.slider.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/newsandevents') }}"><i class="nav-icon icon-plane"></i> {{ trans('admin.newsandevent.title') }}</a></li>
           <li class="nav-item"><a class="nav-link" href="{{ url('admin/videolinks') }}"><i class="nav-icon icon-star"></i> {{ trans('admin.videolink.title') }}</a></li>
           {{-- Do not delete me :) I'm used for auto-generation menu items --}}

            <li class="nav-title">{{ trans('brackets/admin-ui::admin.sidebar.settings') }}</li>
            <li class="nav-item"><a class="nav-link" href="{{ url('admin/admin-users') }}"><i class="nav-icon icon-user"></i> {{ __('Manage access') }}</a></li>
            <li class="nav-item"><a class="nav-link" href="{{ url('admin/translations') }}"><i class="nav-icon icon-location-pin"></i> {{ __('Translations') }}</a></li> 
            {{-- Do not delete me :) I'm also used for auto-generation menu items --}}
            {{--<li class="nav-item"><a class="nav-link" href="{{ url('admin/configuration') }}"><i class="nav-icon icon-settings"></i> {{ __('Configuration') }}</a></li>--}}
        </ul>
    </nav>
    <button class="sidebar-minimizer brand-minimizer" type="button"></button>
</div>
