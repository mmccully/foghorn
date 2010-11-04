class CreateKidsPets < ActiveRecord::Migration
  def self.up
    create_table :kids_pets, :id => false do |t|
      t.integer :kid_id, :null => false
      t.integer :pet_id, :null => false
    end
  end

  def self.down
    drop_table :kids_pets
  end
end
