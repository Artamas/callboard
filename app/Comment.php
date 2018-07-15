<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{

    protected $fillable = [
        'body', 'rate','user_id','author_id'
    ];

    public function profile()
    {
        return $this->belongsTo(User::class,'user_id','id');
    }
}
