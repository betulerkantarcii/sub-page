<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;
use Brackets\Media\HasMedia\ProcessMediaTrait;
use Brackets\Media\HasMedia\AutoProcessMediaTrait;
use Brackets\Media\HasMedia\HasMediaCollectionsTrait;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Spatie\MediaLibrary\HasMedia;
use Brackets\Media\HasMedia\HasMediaThumbsTrait;

class Research extends Model implements HasMedia
{

    use ProcessMediaTrait;
    use AutoProcessMediaTrait;
    use HasMediaCollectionsTrait;
    use HasMediaThumbsTrait;
   
    public function registerMediaCollections(): void
    {

        $this->addMediaCollection('cover')
        ->acceptsMimeTypes([
            'image/jpeg',
            'image/jpg',
            'image/png'
        ])
        ->maxFilesize(10*1024*1024)
        ->singleFile();
      
    }

    public function getCoverAttribute()
    {
        return $this->getFirstMediaUrl('cover', 'thumb_square') ?: false;
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->autoRegisterThumb200();
    }


    protected $fillable = [
        'title',
        'description',
        'link',
    
    ];
    
    
    protected $dates = [
    
    ];
    public $timestamps = false;
    
    protected $appends = ['resource_url'];

    /* ************************ ACCESSOR ************************* */

    public function getResourceUrlAttribute()
    {
        return url('/admin/research/'.$this->getKey());
    }
}
