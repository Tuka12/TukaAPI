<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;
use App\Models\Product;
class ReviewSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       /* $faker = \Faker\Factory::create();
         DB::table("reviews")->insert([
            'product_id' => Product::all()->random()->id,
            "customer" => $faker->word,
            "review" => $faker->paragraph,
            "star" => $faker->numberBetween(0,5), 
        ]);*/
    }
}
