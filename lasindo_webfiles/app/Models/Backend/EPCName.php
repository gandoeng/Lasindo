<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EPCName extends Model
{
    use HasFactory;
    protected $table = "epc_names";
    protected $fillable  = [
        'name'
    ];
}
