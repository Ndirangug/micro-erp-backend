<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\CreditNote;


class CreditNoteSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        CreditNote::factory()
            ->count(100)
            ->create();
    }
}
