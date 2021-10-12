<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'quantity',
    ];

    /**
     * Get the supplierItem that owns the OrderItem
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function supplierItem(): BelongsTo
    {
        return $this->belongsTo(SupplierItem::class);
    }

    /**
     * Get the purchaseOrder that owns the OrderItem
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function purchaseOrder(): BelongsTo
    {
        return $this->belongsTo(PurchaseOrder::class);
    }

    /**
     * Get the inventoryItem that owns the OrderItem
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function inventoryItem(): BelongsTo
    {
        return $this->belongsTo(InventoryItem::class);
    }

    /**
    * Get the inventoryItem that owns the OrderItem
    *
    * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
    */
    public function salesOrder(): BelongsTo
    {
        return $this->belongsTo(SalesOrder::class);
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
}
