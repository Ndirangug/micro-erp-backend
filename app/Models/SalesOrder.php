<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesOrder extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'amount',
        'order_no',
    ];

    /**
     * Get all of the orderItems for the SupplierItem
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function orderItems(): HasMany
    {
        return $this->hasMany(OrderItem::class);
    }

    /**
     * Get the shop that owns the PurchaseOrder
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shop(): BelongsTo
    {
        return $this->belongsTo(Shop::class);
    }

    /**
     * Get the customer that owns the SalesOrder
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
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
     * Get the creditNote that owns the SalesOrder
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function creditNote(): BelongsTo
    {
        return $this->belongsTo(CreditNote::class);
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
