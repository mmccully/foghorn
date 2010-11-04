class CreateKids < ActiveRecord::Migration
  def self.up
    create_table :kids do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end

  def self.down
    drop_table :kids
  end
end
