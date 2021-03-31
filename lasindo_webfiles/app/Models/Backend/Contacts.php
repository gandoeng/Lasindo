<?php

namespace App\Models\Backend;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Contacts extends Model
{
    use HasFactory;
    protected $table = "contacts";
    protected $fillable  = [
        'fname',
        'lname',
        'company',
        'country',
        'phone',
        'email',
        'message',
    ];
}
