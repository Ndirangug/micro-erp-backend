<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SalesOrder;

class SalesOrderSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SalesOrder::factory()
            ->count(100)
            ->create();
    }
}
