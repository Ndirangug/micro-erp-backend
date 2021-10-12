<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DebitNote extends Model
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
     * Get the supplier that owns the DebitNote
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function supplier(): BelongsTo
    {
        return $this->belongsTo(Supplier::class);
    }

    /**
     * Get the purchaseOrder that owns the DebitNote
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function purchaseOrder(): BelongsTo
    {
        return $this->belongsTo(PurchaseOrder::class);
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
