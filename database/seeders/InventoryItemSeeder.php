<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\InventoryItem;


class InventoryItemSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        InventoryItem::factory()
            ->count(100)
            ->create();
    }
}
