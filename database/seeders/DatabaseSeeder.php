<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\StudentSeeder;
use App\Models\Student;
use App\Models\Review;
use App\Models\Product;
class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        //$this->call(insert_records_in_users_table::class);
        /*$this->call([
            StudentSeeder::class
        ]);*/
        //\App\Models\Student::factory(100)->create();

       /* $this->call([
            ProductSeeder::class,
            ReviewSeeder::class
        ]);*/

        \App\Models\Product::factory(100)->create();
        \App\Models\Review::factory(300)->create();
    }
}
