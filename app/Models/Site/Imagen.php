<?php

namespace App\Models\Site;

use Illuminate\Database\Eloquent\Model;

class Imagen extends Model
{
    protected $table = 'hp_images';

    /**
     * Get the post that owns the comment.
     */

    public function hostal()

    {

        return $this->belongsTo(Hostal::class);

    }
}
