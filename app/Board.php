<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Board extends Model
{
    protected $fillable = [
        'title', 'body', 'published_at', 'image', 'user_id'
    ];
}
