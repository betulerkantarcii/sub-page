<?php

/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(Brackets\AdminAuth\Models\AdminUser::class, function (Faker\Generator $faker) {
    return [
        'activated' => true,
        'created_at' => $faker->dateTime,
        'deleted_at' => null,
        'email' => $faker->email,
        'first_name' => $faker->firstName,
        'forbidden' => $faker->boolean(),
        'language' => 'en',
        'last_login_at' => $faker->dateTime,
        'last_name' => $faker->lastName,
        'password' => bcrypt($faker->password),
        'remember_token' => null,
        'updated_at' => $faker->dateTime,
        
    ];
});/** @var  \Illuminate\Database\Eloquent\Factory $factory */



/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Template::class, static function (Faker\Generator $faker) {
    return [
        'name' => $faker->firstName,
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\ChoiceOfTemplate::class, static function (Faker\Generator $faker) {
    return [
        'template_id' => $faker->randomNumber(5),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Main::class, static function (Faker\Generator $faker) {
    return [
        'enabled' => $faker->boolean(),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        'title' => ['en' => $faker->sentence],
        'description' => ['en' => $faker->sentence],
        'link' => ['en' => $faker->sentence],
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Menu::class, static function (Faker\Generator $faker) {
    return [
        'name' => ['en' => $faker->firstName],
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\MenuContent::class, static function (Faker\Generator $faker) {
    return [
        'enabled' => $faker->boolean(),
        'menu_id' => $faker->randomNumber(5),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        'title' => ['en' => $faker->sentence],
        'description' => ['en' => $faker->sentence],
        
    ];
});


/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Menu::class, static function (Faker\Generator $faker) {
    return [
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        'name' => ['en' => $faker->firstName],
        
    ];
});

/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\EventCalendar::class, static function (Faker\Generator $faker) {
    return [
        'event_time' => $faker->dateTime,
        'published_at' => $faker->date(),
        'enabled' => $faker->boolean(),
        'created_at' => $faker->dateTime,
        'updated_at' => $faker->dateTime,
        
        'title' => ['en' => $faker->sentence],
        'link' => ['en' => $faker->sentence],
        'event_location' => ['en' => $faker->sentence],
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Research::class, static function (Faker\Generator $faker) {
    return [
        'title' => $faker->sentence,
        'description' => $faker->text(),
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Slider::class, static function (Faker\Generator $faker) {
    return [
        'link' => $faker->text(),
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Newsandevent::class, static function (Faker\Generator $faker) {
    return [
        'heading' => $faker->sentence,
        'link' => $faker->text(),
        'published' => $faker->date(),
        'enabled' => $faker->boolean(),
        
        
    ];
});
/** @var  \Illuminate\Database\Eloquent\Factory $factory */
$factory->define(App\Models\Videolink::class, static function (Faker\Generator $faker) {
    return [
        'video_link' => $faker->text(),
        
    ];
});
