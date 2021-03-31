<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class SlideBanners extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "slide_banners";
    protected $fillable  = [
        'headline',
        'image'
    ];
}
