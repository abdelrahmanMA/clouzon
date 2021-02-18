<?php

namespace App\Http\Resources;

use App\Models\Product;
use Illuminate\Http\Resources\Json\JsonResource;

class CartItemResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $product = Product::find($this->product_id);
        return [
            'product_id' => $this->product_id,
            'price' => $product->price,
            'sale_price' => $product->sale_price,
            'name' => $product->name,
            'quantity' => $this->quantity,
        ];
    }
}
