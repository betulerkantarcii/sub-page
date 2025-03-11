<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Brackets\Media\HasMedia\ProcessMediaTrait;
use Brackets\Media\HasMedia\AutoProcessMediaTrait;
use Brackets\Media\HasMedia\HasMediaCollectionsTrait;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Spatie\MediaLibrary\HasMedia;
use Brackets\Media\HasMedia\HasMediaThumbsTrait;
use Brackets\Translatable\Traits\HasTranslations;



class Slider extends Model implements HasMedia
{
    use HasTranslations;
    use ProcessMediaTrait;
    use AutoProcessMediaTrait;
    use HasMediaCollectionsTrait;
    use HasMediaThumbsTrait;

    protected $table = 'slider';

    protected $fillable = [
        'link',
    
    ];
    
    
    protected $dates = [
    
    ];
    // these attributes are translatable
    public $translatable = [
        'link',
    
    ];
    public $timestamps = false;
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function registerMediaCollections(): void
    {

        $this->addMediaCollection('coverEN')
        ->acceptsMimeTypes([
            'image/jpeg',
            'image/jpg',
            'image/png'
        ])
        ->maxFilesize(10*1024*1024)
        ->singleFile();

        $this->addMediaCollection('coverTR')
        ->acceptsMimeTypes([
            'image/jpeg',
            'image/jpg',
            'image/png'
            ])
            ->maxFilesize(10*1024*1024)
            ->singleFile();


        

    }

    public function getCoverENAttribute()
    {
        return $this->getFirstMediaUrl('coverEN', 'thumb_square') ?: false;
    }

    public function getCoverTRAttribute()
    {
        return $this->getFirstMediaUrl('coverTR', 'thumb_square') ?: false;
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->autoRegisterThumb200();
    }
}
