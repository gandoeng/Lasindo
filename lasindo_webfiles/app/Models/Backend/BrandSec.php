<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BrandSec extends Model
{
    use HasFactory;
    protected $table = "brand_secs";
    protected $fillable  = [
        'section',
        'brandsec'
    ];
}
