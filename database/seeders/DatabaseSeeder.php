<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call([
            // UsersTableSeeder::class,
            // ShopOwnerSeeder::class,
            // SupplierSeeder::class,
            // CustomerSeeder::class,
            // BrandSeeder::class,
            // ProductSeeder::class,
            // CategorySeeder::class,
            // ProductCategorySeeder::class,
            // ShopSeeder::class,
            // InventoryItemSeeder::class,
            // CreditNoteSeeder::class,
            // DebitNoteSeeder::class,
            // SupplierItemSeeder::class,
            // PurchaseOrderSeeder::class,
            // SalesOrderSeeder::class,
            // OrderItemSeeder::class,
            // TransactionSeeder::class,
            MetaSeeder::class,
        ]);
    }
}
