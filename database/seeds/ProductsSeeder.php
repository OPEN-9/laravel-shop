<?php

use Illuminate\Database\Seeder;
use App\Models\Product;
use App\Models\ProductSku;

class ProductsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $products = factory(Product::class, 30)->create();

        foreach ($products as $item){
            $skus = factory(ProductSku::class ,3)->create(['product_id' => $item->id]);
            $item->update(['price' => $skus->min('price')]);
        }
    }

}
