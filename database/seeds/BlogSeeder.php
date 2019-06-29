<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class BlogSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
    	$faker = Faker::create('id_ID');
    	for ($i=0; $i < 100 ; $i++) { 
          DB::table('module_blog')->insert([
            'title' => $faker->name,
            'description' => $faker->text,
          ]);
      	}
    }
}
