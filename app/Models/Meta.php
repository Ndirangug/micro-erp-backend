<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Meta extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'key',
        'value',
        'for_type',
    ];

    /**
     * Get the user that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function user(): BelongsTo
    {
        return $this->belongsTo(User::class);
    }

    /**
     * Get the user that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shopOwner(): BelongsTo
    {
        return $this->belongsTo(ShopOwner::class);
    }

    /**
     * Get the customer that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function customer(): BelongsTo
    {
        return $this->belongsTo(Customer::class);
    }

    /**
     * Get the supplier that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    /**
     * Get the shop that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shop(): BelongsTo
    {
        return $this->belongsTo(Shop::class);
    }

    /**
     * Get the product that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function product(): BelongsTo
    {
        return $this->belongsTo(Product::class);
    }

    /**
     * Get the brand that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }

    /**
     * Get the InventoryItem that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function inventoryItem(): BelongsTo
    {
        return $this->belongsTo(InventoryItem::class);
    }

    /**
     * Get the SupplierItem that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function supplierItem(): BelongsTo
    {
        return $this->belongsTo(SupplierItem::class);
    }

    /**
     * Get the purchaseOrder that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function purchaseOrder(): BelongsTo
    {
        return $this->belongsTo(PurchaseOrder::class);
    }

    /**
     * Get the salesOrder that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function salesOrder(): BelongsTo
    {
        return $this->belongsTo(SalesOrder::class);
    }

    /**
     * Get the creditNote that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function creditNote(): BelongsTo
    {
        return $this->belongsTo(CreditNote::class);
    }

    /**
     * Get the debitNote that owns the Meta
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function debitNote(): BelongsTo
    {
        return $this->belongsTo(DebitNote::class);
    }
}
