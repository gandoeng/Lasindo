<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Sections extends Model
{
    use HasFactory;    
    use SoftDeletes;
    
        protected $table = "sections";
        protected $fillable  = [
            'category_name',
            'section',
            'slug'
        ];
}
