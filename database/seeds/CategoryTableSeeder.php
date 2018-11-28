<?php

use Illuminate\Database\Seeder;
use App\Category;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = array(
			[
				'name' => 'eaton', 
				'slug' => 'eaton', 
				'description' => 'Productos EATON', 
				'color' => '#6092f6'
			],
			[
				'name' => 'schneider', 
				'slug' => 'schneider', 
				'description' => 'Productos schneider-electric', 
				'color' => '#13b438'
			]
		);

		Category::insert($data);
    }
}
