<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AboutDesc extends Model
{
    use HasFactory;
    protected $table = "about_descs";
    protected $fillable  = [
        'about_main',
        'about_hse'
    ];
}
