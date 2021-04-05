<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class news extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "news";
    protected $fillable  = [
        'title',
        'author',
        'newsDate',
        'newsImage',
        'newsContent',
        'newsPublice'
    ];
}
