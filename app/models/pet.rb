class Pet < ActiveRecord::Base
  belongs_to :kid
  validates :pet_name, :color, :species, :kid_id, :presence => true
  validates_length_of :pet_name, :color, :species, :maximum => 25
end
