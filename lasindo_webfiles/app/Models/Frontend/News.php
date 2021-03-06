<?php

namespace App\Models\Frontend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;
    protected $table = "news";
    protected $fillable = [
    	'title',
    	'author',
    	'newsDate',
    	'newsImage',
    	'newsContent',
    	'newsPublice',
    ];
}
