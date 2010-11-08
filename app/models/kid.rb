class Kid < ActiveRecord::Base
  has_many :pets
  validates :first_name, :last_name, :presence => true
  validates :first_name, :uniqueness => true
  validates :first_name, :last_name, :length => {:maximum => 25}
#  accepts_nested_attributes_for :pets, :allow_destroy => true
end
