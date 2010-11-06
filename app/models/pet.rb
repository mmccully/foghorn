class Pet < ActiveRecord::Base
  belongs_to :kid
  validates_presence_of :pet_name, :color, :species
  validates_length_of :pet_name, :color, :species, :maximum => 255
end
