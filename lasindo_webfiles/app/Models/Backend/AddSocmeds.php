<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AddSocmeds extends Model
{
    use HasFactory;
    protected $table = "add_socmeds";
    protected $fillable  = [
        'address',
        'phone',
        'fax',
        'email',
        'wa',
        'fb',
        'in',
        'tw',
    ];
}
