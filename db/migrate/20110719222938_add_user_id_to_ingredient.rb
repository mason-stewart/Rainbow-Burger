class AddUserIdToIngredient < ActiveRecord::Migration
  def self.up
    add_column :ingredients, :user_id, :integer
  end

  def self.down
    remove_column :ingredients, :user_id
  end
end
