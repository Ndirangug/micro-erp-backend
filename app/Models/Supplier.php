<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Supplier extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name',
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
    * Get all of the supplierItems for the Product
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasMany
    */
    public function supplierItems(): HasMany
    {
        return $this->hasMany(SupplierItem::class);
    }

    /**
     * Get all of the products for the Supplier
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasManyThrough
     */
    public function products(): HasManyThrough
    {
        return $this->hasManyThrough(Product::class, SupplierItem::class);
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
   * Get all of the debitNotes for the Shop
   *
   * @return \Illuminate\Database\Eloquent\Relations\HasMany
   */
    public function debitNotes(): HasMany
    {
        return $this->hasMany(DebitNote::class);
    }

    /**
     * The debtors that belong to the Supplier
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function debtors(): BelongsToMany
    {
        return $this->belongsToMany(Shop::class, 'debit_note');
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
