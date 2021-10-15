<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\SupplierItem;

class SupplierItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        SupplierItem::factory()
            ->count(100)
            ->create();
    }
}
