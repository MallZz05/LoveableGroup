<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class BookPhoto extends Model
{
    use HasFactory, SoftDeletes;
    //
    protected $fillable = [
        'photo',
        'book_id',
    ];
}
