<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Database\Seeders\StudentSeeder;
use App\Models\Student;

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
        \App\Models\Student::factory(100)->create();
    }
}
