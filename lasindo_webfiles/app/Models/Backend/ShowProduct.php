<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShowProduct extends Model
{
    use HasFactory;
    protected $table = "show_products";
    protected $fillable  = [
        'name',
        'link',
        'layout',
        'brand',
        'image'
    ];
}
