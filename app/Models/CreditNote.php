<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class CreditNote extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'amount',
        'deadline',
        'customer_id',
        'shop_id',
    ];

    /**
     * Get the shop that owns the CreditNote
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shop(): BelongsTo
    {
        return $this->belongsTo(Shop::class);
    }

    /**
          * Get the customer that owns the CreditNote
          *
          * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
          */
    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
    }

    /**
     * Get the salesOrder associated with the CreditNote
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function salesOrder(): HasOne
    {
        return $this->hasOne(SalesOrder::class);
    }

    /**
     * Get all of the meta for the Supplier
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function meta(): HasMany
    {
        return $this->hasMany(Meta::class);
    }
}
