<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\DebitNote;

class DebitNoteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DebitNote::factory()
            ->count(100)
            ->create();
    }
}
