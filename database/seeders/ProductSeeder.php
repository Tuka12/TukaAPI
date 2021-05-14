<?php

namespace Database\Seeders;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Seeder;

class ProductSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       /* $faker = \Faker\Factory::create();
         DB::table("products")->insert([
            "name" => $faker->word,
            "detail" => $faker->paragraph,
            "price" => $faker->numberBetween(100,1000),
            "stock" => $faker->randomDigit,
            "discount" => $faker->numberBetween(2, 30),        
        ]);*/
    }
}
