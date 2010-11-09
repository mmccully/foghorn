class Kid < ActiveRecord::Base
  has_many :pets, :dependent => :destroy
  validates :first_name, :last_name, :presence => true
  validates :first_name, :uniqueness => true
  validates :first_name, :last_name, :length => {:maximum => 25}
end
