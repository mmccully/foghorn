class CreatePets < ActiveRecord::Migration
  def self.up
    create_table :pets do |t|
      t.string :pet_name
      t.string :color
      t.string :species

      t.timestamps
    end
  end

  def self.down
    drop_table :pets
  end
end
