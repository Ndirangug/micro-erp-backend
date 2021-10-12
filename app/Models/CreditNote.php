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
     * Get the salesOrder that owns the CreditNote
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function salesOrder(): BelongsTo
    {
        return $this->belongsTo(SalesOrder::class);
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
