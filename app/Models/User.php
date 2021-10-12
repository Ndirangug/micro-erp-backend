<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'email',
        'phone',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

   
    
    /**
     * The attributes that should be cast.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

     /**
    * Get the shopOwner associated with the User
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasOne
    */
   public function shopOwner(): HasOne
   {
       return $this->hasOne(ShopOwner::class);
   }


    /**
    * Get the customer associated with the User
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasOne
    */
   public function customer(): HasOne
   {
       return $this->hasOne(Customer::class);
   }



   /**
    * Get the supplier associated with the User
    *
    * @return \Illuminate\Database\Eloquent\Relations\HasOne
    */
   public function supplier(): HasOne
   {
       return $this->hasOne(Supplier::class);
   }
}
