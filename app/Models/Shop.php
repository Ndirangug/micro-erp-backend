<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Shop extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
        'photoUrl',
        'bio',
        'phone',
        'email',
    ];

    /**
     * Get all of the meta for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function meta(): HasMany
    {
        return $this->hasMany(Meta::class);
    }

    /**
     * Get the shopOwner that owns the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function shopOwner(): BelongsTo
    {
        return $this->belongsTo(ShopOwner::class);
    }

    /**
    * Get all of the InventoryItems for the Product
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function inventoryItems(): HasMany
    {
        return $this->hasMany(InventoryItem::class);
    }

    /**
    * Get all of the purchaseOrders for the Supplier
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function purchaseOrders(): HasMany
    {
        return $this->hasMany(PurchaseOrder::class);
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
     * Get all of the creditNotes for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function creditNotes(): HasMany
    {
        return $this->hasMany(CreditNote::class);
    }

    /**
     * Get all of the debtors for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
     */
    public function debtors(): HasManyThrough
    {
        return $this->hasManyThrough(Customer::class, CreditNote::class);
    }

    /**
     * Get all of the debitNotes for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function debitNotes(): HasMany
    {
        return $this->hasMany(DebitNote::class);
    }

    /**
     * Get all of the creditors for the Shop
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
     */
    public function creditors(): HasManyThrough
    {
        return $this->hasManyThrough(Supplier::class, DebitNote::class);
    }
}
