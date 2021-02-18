<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cart extends Model
{
    use HasFactory;

    protected $table = 'cart';
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'id',
        'key',
        'user_id',
    ];
    public $incrementing = false;

    /**
    * Get items in the cart.
    */

    public function items()
    {
        return $this->hasMany(CartItem::class);
    }
}
