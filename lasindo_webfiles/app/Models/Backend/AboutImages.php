<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutImages extends Model
{
    use HasFactory;
    protected $table = "about_images";
    protected $fillable  = [
        'about_image'
    ];
}
