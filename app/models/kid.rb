class Kid < ActiveRecord::Base
  has_many :pets
  validates_presence_of :first_name, :last_name
  validates_length_of :first_name, :last_name, :maximum => 255
#  accepts_nested_attributes_for :pets, :allow_destroy => true
end
