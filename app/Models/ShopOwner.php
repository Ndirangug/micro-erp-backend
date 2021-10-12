<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ShopOwner extends Model
{
    use HasFactory;

      /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'firstName',
        'lastName',
        'photoUrl'
    ];

   /**
    * Get the user that owns the ShopOwner
    *
    * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
    */
   public function userAccount(): BelongsTo
   {
       return $this->belongsTo(User::class);
   }

   /**
    * Get all of the shops for the ShopOwner
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
   public function shops(): HasMany
   {
       return $this->hasMany(Shop::class, 'foreign_key', 'local_key');
   }

}
