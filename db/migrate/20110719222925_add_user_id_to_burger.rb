class AddUserIdToBurger < ActiveRecord::Migration
  def self.up
    add_column :burgers, :user_id, :integer
  end

  def self.down
    remove_column :burgers, :user_id
  end
end
