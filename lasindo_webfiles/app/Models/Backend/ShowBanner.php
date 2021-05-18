<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShowBanner extends Model
{
    use HasFactory;
    protected $table = "show_banners";
    protected $fillable  = [
        'name',
        'link',
        'brand',
        'image'
    ];
}
