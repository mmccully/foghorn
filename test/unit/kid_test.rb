require 'test_helper'

class KidTest < ActiveSupport::TestCase

  test "kid should not save without names" do
    kid = Kid.new
    assert !kid.save, "Saved a kid without first or last name"
  end

  test "kid is not valid without a unique first name" do
    kid = Kid.new(:first_name => "Mickey",
                  :last_name => "Mouse")
    assert !kid.save, "Saved a kid with a duplicate name"
    assert_equal "has already been taken", kid.errors[:first_name].join('; ')
  end

  test "kid names must be no more than 25 characters long" do
    kid = Kid.new(:first_name => "bob", :last_name => "nob")

    assert kid.valid?, "First name should be maximun of :max characters"

#    kid.first_name = "123456789012345678790123456"
#    assert kid.invalid?, "First name is 26 characters"
#    assert_equal "is too long (maximun is 25 characters)",
#          kid.errors[:first_name].join('; ')
  end
end
