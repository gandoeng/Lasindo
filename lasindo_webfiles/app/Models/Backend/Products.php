<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Products extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "products";
    protected $fillable  = [
        'category',
        'section',
        'brand',
        'layout',
        'name',
        'desc',
        'image'
    ];
}
