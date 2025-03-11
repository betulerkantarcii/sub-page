<?php

return [
    'admin-user' => [
        'title' => 'Users',

        'actions' => [
            'index' => 'Users',
            'create' => 'New User',
            'edit' => 'Edit :name',
            'edit_profile' => 'Edit Profile',
            'edit_password' => 'Edit Password',
        ],

        'columns' => [
            'id' => 'ID',
            'last_login_at' => 'Last login',
            'activated' => 'Activated',
            'email' => 'Email',
            'first_name' => 'First name',
            'forbidden' => 'Forbidden',
            'language' => 'Language',
            'last_name' => 'Last name',
            'password' => 'Password',
            'password_repeat' => 'Password Confirmation',
                
            //Belongs to many relations
            'roles' => 'Roles',
                
        ],
    ],




    'template' => [
        'title' => 'Templates',

        'actions' => [
            'index' => 'Templates',
            'create' => 'New Template',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'choice-of-template' => [
        'title' => 'Choice Of Template',

        'actions' => [
            'index' => 'Choice Of Template',
            'create' => 'New Choice Of Template',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'template_id' => 'Template',
            
        ],
    ],

    'main' => [
        'title' => 'Main',

        'actions' => [
            'index' => 'Main',
            'create' => 'New Main',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'link' => 'Link',
            'enabled' => 'Enabled',
            
        ],
    ],

    'menu' => [
        'title' => 'Menus',

        'actions' => [
            'index' => 'Menus',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'menu-content' => [
        'title' => 'Menu Content',

        'actions' => [
            'index' => 'Menu Content',
            'create' => 'New Menu Content',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            'enabled' => 'Enabled',
            'menu_id' => 'Menu',
            
        ],
    ],

    'menu' => [
        'title' => 'Menu',

        'actions' => [
            'index' => 'Menu',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'menu' => [
        'title' => 'Menus',

        'actions' => [
            'index' => 'Menus',
            'create' => 'New Menu',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'name' => 'Name',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'link' => 'Link',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    'event-calendar' => [
        'title' => 'Event Calendar',

        'actions' => [
            'index' => 'Event Calendar',
            'create' => 'New Event Calendar',
            'edit' => 'Edit :name',
            'will_be_published' => 'EventCalendar will be published at',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'link' => 'Link',
            'event_time' => 'Event time',
            'event_location' => 'Event location',
            'published_at' => 'Published at',
            'enabled' => 'Enabled',
            
        ],
    ],

    'research' => [
        'title' => 'Research',

        'actions' => [
            'index' => 'Research',
            'create' => 'New Research',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'title' => 'Title',
            'description' => 'Description',
            
        ],
    ],

    'slider' => [
        'title' => 'Slider',

        'actions' => [
            'index' => 'Slider',
            'create' => 'New Slider',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'link' => 'Link',
            
        ],
    ],

    'newsandevent' => [
        'title' => 'Newsandevents',

        'actions' => [
            'index' => 'Newsandevents',
            'create' => 'New Newsandevent',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'heading' => 'Heading',
            'info' => 'Information',
            'link' => 'Link',
            'published' => 'Published',
            'enabled' => 'Enabled',
            
        ],
    ],

    'videolink' => [
        'title' => 'Videolink',

        'actions' => [
            'index' => 'Videolink',
            'create' => 'New Videolink',
            'edit' => 'Edit :name',
        ],

        'columns' => [
            'id' => 'ID',
            'video_link' => 'video_link',
            
        ],
    ],

    // Do not delete me :) I'm used for auto-generation
];