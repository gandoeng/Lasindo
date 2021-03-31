<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Categories extends Model
{
    use HasFactory;
    use SoftDeletes;
    
        protected $table = "categories";
        protected $fillable  = [
            'category_name',
        ];
}
