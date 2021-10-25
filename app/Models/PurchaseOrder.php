<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\HasMany;

class PurchaseOrder extends Model
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
     * Get the shop that owns the PurchaseOrder
     *
     * @return BelongsTo
     */
    public function shop(): BelongsTo
    {
        return $this->belongsTo(Shop::class);
    }

    /**
     * Get the supplier that owns the PurchaseOrder
     *
     * @return BelongsTo
     */
    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    /**
    * Get all of the meta for the Supplier
    *
    * @return HasMany
    */
    public function meta(): HasMany
    {
        return $this->hasMany(Meta::class);
    }

    /**
     * Get all of the orderItems for the SupplierItem
     *
     * @return HasMany
     */
    public function orderItems(): HasMany
    {
        return $this->hasMany(OrderItem::class);
    }

    /**
     * Get the debitNote that owns the PurchaseOrder
     *
     * @return BelongsTo
     */
    public function debitNote(): BelongsTo
    {
        return $this->belongsTo(DebitNote::class);
    }

    /**
     * Get all of the transactions for the PurchaseOrder
     *
     * @return HasMany
     */
    public function transactions(): HasMany
    {
        return $this->hasMany(Transaction::class);
    }
}
