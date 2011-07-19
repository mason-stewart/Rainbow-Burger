class CreateBurgersIngredients < ActiveRecord::Migration
  def self.up
  	create_table :burgers_ingredients, :id => false do |t|
  		t.integer :burger_id
  		t.integer :ingredient_id
  	end
  end

  def self.down
  	drop_table :burgers_ingredients
  end
end
