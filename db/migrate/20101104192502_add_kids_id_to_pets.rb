class AddKidsIdToPets < ActiveRecord::Migration
  def self.up
    add_column :pets, :kid_id, :integer, :references => :pets
  end

  def self.down
    remove_column :pets, kid_id
  end
end
