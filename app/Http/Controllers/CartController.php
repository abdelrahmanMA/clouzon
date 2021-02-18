<?php

namespace App\Http\Controllers;

use App\Http\Resources\CartItemCollection;
use App\Models\Cart;
use App\Models\CartItem;
use App\Models\Product;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Illuminate\Http\Request;
use Validator;

class CartController extends Controller
{
    /**
     * Store a newly created Cart in storage and return the data to the user.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (auth()->check()) {
            $userID = auth()->user()->id;
        }
        $cart = Cart::where(['user_id' => $userID])->first();
        $message = 'You already have a cart!';
        if (!$cart) {
            $cart = Cart::create([
                'id' => md5(uniqid(rand(), true)),
                'key' => md5(uniqid(rand(), true)),
                'user_id' => isset($userID) ? $userID : null,
            ]);
            $message = 'A new cart have been created for you!';
        }
        return response()->json([
            'Message' => $message,
            'cart_id' => $cart->id,
            'cart_key' => $cart->key,
        ], 201);
    }


    /**
     * Display the specified Cart.
     *
     * @param  \App\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function show(Cart $cart, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cart_key' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors(),
            ], 400);
        }

        $cartKey = $request->input('cart_key');
        if ($cart->key == $cartKey) {
            return response()->json([
                'cart' => $cart->id,
                'Items in Cart' => new CartItemCollection($cart->items),
            ], 200);
        } else {
            return response()->json([
                'message' => 'The CartKey you provided does not match the Cart Key for this Cart.',
            ], 400);
        }
    }

    /**
     * Remove the specified Cart from storage.
     *
     * @param  \App\Cart  $cart
     * @return \Illuminate\Http\Response
     */
    public function destroy(Cart $cart, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cart_key' => 'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors(),
            ], 400);
        }

        $cartKey = $request->input('cart_key');

        if ($cart->key == $cartKey) {
            $cart->delete();
            return response()->json(null, 204);
        } else {
            return response()->json([
                'message' => 'The CartKey you provided does not match the Cart Key for this Cart.',
            ], 400);
        }
    }


    /**
    * Adds Products to the given Cart;
    *
    * @param  \Illuminate\Http\Request  $request
    * @param  \App\Cart  $cart
    * @return void
    */
    public function addProducts(Cart $cart, Request $request)
    {
        $validator = Validator::make($request->all(), [
            'cart_key' => 'required',
            'product_id' => 'required',
            'quantity' => 'required|numeric|min:1',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'errors' => $validator->errors(),
            ], 400);
        }

        $cartKey = $request->input('cart_key');
        $productID = $request->input('product_id');
        $quantity = $request->input('quantity');

        //Check if the CartKey is Valid
        if ($cart->key == $cartKey) {
            //Check if the proudct exist or return 404 not found.
            try {
                $Product = Product::findOrFail($productID);
            } catch (ModelNotFoundException $e) {
                return response()->json([
                    'message' => 'The Product you\'re trying to add does not exist.',
                ], 404);
            }

            //check if the the same product is already in the Cart, if true update the quantity, if not create a new one.
            $cartItem = CartItem::where(['cart_id' => $cart->getKey(), 'product_id' => $productID])->first();
            if ($cartItem) {
                $cartItem->quantity = $quantity;
                CartItem::where(['cart_id' => $cart->getKey(), 'product_id' => $productID])->update(['quantity' => $quantity]);
            } else {
                CartItem::create(['cart_id' => $cart->getKey(), 'product_id' => $productID, 'quantity' => $quantity]);
            }

            return response()->json(['message' => 'The Cart was updated with the given product information successfully'], 200);
        } else {
            return response()->json([
                'message' => 'The CartKey you provided does not match the Cart Key for this Cart.',
            ], 400);
        }
    }
}
