<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use \Illuminate\Database\Eloquent\Relations\HasMany;
use \Illuminate\Database\Eloquent\Relations\BelongsToMany;
use \Illuminate\Database\Eloquent\Relations\BelongsTo;

class Product extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'title',
        'description',
        'mainImage',
        'summary',
        'barcode',
        'brand_id'
    ];

    /**
     * Get all of the meta for the Product
     *
     * @return HasMany
     */
    public function meta(): HasMany
    {
        return $this->hasMany(Meta::class);
    }

    /**
     * The categories that belong to the Product
     *
     * @return BelongsToMany
     */
    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(Category::class, 'product_categories', 'product_id', 'category_id');
    }

    /**
     * Get all of the InventoryItems for the Product
     *
     * @return HasMany
     */
    public function inventoryItems(): HasMany
    {
        return $this->hasMany(InventoryItem::class);
    }

    /**
     * Get all of the supplierItems for the Product
     *
     * @return HasMany
     */
    public function supplierItems(): HasMany
    {
        return $this->hasMany(SupplierItem::class);
    }

    /**
     * The suppliers that belong to the Product
     *
     * @return BelongsToMany
     */
    public function suppliers(): BelongsToMany
    {
        return $this->belongsToMany(Supplier::class, 'supplier_items');
    }

    /**
     * Get the user that owns the Product
     *
     * @return BelongsTo
     */
    public function brand(): BelongsTo
    {
        return $this->belongsTo(Brand::class);
    }

    /**
    * Get all of the productCategories for the product
    *
    * @return HasMany
    */
    public function productCategories(): HasMany
    {
        return $this->hasMany(ProductCategory::class);
    }
}
