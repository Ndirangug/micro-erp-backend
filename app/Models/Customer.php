<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Customer extends Model
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
     * Get all of the salesOrders for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function salesOrders(): HasMany
    {
        return $this->hasMany(SalesOrder::class);
    }

    /**
     * Get all of the meta for the Customer
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function meta(): HasMany
    {
        return $this->hasMany(Meta::class);
    }

      /**
     * Get all of the creditNotes for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function creditNotes(): HasMany
    {
        return $this->hasMany(CreditNote::class);
    }

    /**
     * The creditors that belong to the Customer
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function creditors(): BelongsToMany
    {
        return $this->belongsToMany(Shop::class, 'credit_notes');
    }

    /**
     * Get all of the transactions for the PurchaseOrder
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }
}
