<?php

use Illuminate\Database\Seeder;
use App\Product;

class ProductTableSeeder extends Seeder
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
				'name' 			=> 'Arrancadores a Tensión Plena No Reversible',
				'slug' 			=> 'arrancadores-a-tension-plena-no-reversible',
				'description' 	=> 'Los arrancadores manuales de motores B100 se pueden utilizar en aplicaciones monofásicas clasificadas para 3 HP a 240 VAC o 2 HP a 230 VDC. También pueden ser clasificados para aplicaciones trifásicas de hasta 10 HP a 600 VAC. El arrancador manual A302 es un arrancador y protector manual del motor trifásico con un mecanismo de disparo bimetálico por sobrecarga regulable e instantáneo magnético de cortocircuito. Pueden ser cableados en el campo para aplicaciones de motores monofásicos mediante la conexión de los 3 polos en serie. ',
				'extract' 		=> 'Los arrancadores manuales de motores B100 se pueden utilizar en aplicaciones monofásicas clasificadas para 3 HP a 240 VAC o 2 HP a 230 VDC',
				'price' 		=> 700.00,
				'image' 		=> '\img\pct_359969.jpg',
				'visible' 		=> 1,
				'created_at' 	=> new DateTime,
				'updated_at' 	=> new DateTime,
				'category_id' 	=> 1
			]
		);

		Product::insert($data);
    }
}
