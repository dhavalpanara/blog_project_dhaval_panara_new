<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class BlogData extends Model
{
	protected $table = 'blog_data';
	
    protected $fillable = [
        'name', 'body', 'created_by'
    ];
}
