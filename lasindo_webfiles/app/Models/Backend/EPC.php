<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class EPC extends Model
{
    use HasFactory;
    use SoftDeletes;

    protected $table = "e_p_c_s";
    protected $fillable  = [
        'image',
        'desc',
        'imagepos'
    ];
}
