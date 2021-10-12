<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Brand extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'bio',
        'photoUrl'
    ];

    /**
     * Get all of the products for the Brand
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function products(): HasMany
    {
        return $this->hasMany(Product::class);
    }

    /**
     * Get all of the metas for the Brand
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function metas(): HasMany
    {
        return $this->hasMany(Meta::class, 'foreign_key', 'local_key');
    }
}
