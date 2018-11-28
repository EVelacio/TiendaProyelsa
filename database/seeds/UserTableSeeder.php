<?php

use Illuminate\Database\Seeder;
use App\User;

class UserTableSeeder extends Seeder
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
				'name' 		=> 'Oved', 
				'last_name' => 'FiSo', 
				'email' 	=> 'ovedfs@gmail.com', 
				'user' 		=> 'ovedfs',
				'password' 	=> \Hash::make('123456'),
				'type' 		=> 'admin',
				'active' 	=> 1,
				'address' 	=> 'San Cosme 290, Cuauhtemoc, D.F.',
				'created_at'=> new DateTime,
				'updated_at'=> new DateTime
			],
			[
				'name' 		=> 'Proyelsa', 
				'last_name' => 'Proyelsa', 
				'email' 	=> 'proyelsa@yahoo.com.mx', 
				'user' 		=> 'AdminProyelsa',
				'password' 	=> \Hash::make('123456'),
				'type' 		=> 'admin',
				'active' 	=> 1,
				'address' 	=> '-----',
				'created_at'=> new DateTime,
				'updated_at'=> new DateTime
			],

		);

		User::insert($data);
    }
}
