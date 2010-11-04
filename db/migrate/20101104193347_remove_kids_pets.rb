class RemoveKidsPets < ActiveRecord::Migration
  def self.up
    drop_table :kids_pets
  end

  def self.down
  end
end
