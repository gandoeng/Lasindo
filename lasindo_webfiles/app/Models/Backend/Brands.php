<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Brands extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "brands";
    protected $fillable  = [
        'name',
        'desc',
        'image'
    ];
}
