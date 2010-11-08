require 'test_helper'

class KidTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

  test "kid is not valid without a unique first name" do
    kid = Kid.new(:first_name => "Mickey",
                  :last_name => "Mouse")
    assert !kid.save
    assert_equal "has already been taken", kid.errors[:first_name].join('; ')
  end

  test "kid names must be no more than 25 characters long" do
    kid = Kids.new

    kid.first_name = "1234567890123456789012345"
    assert kid.valid?

    kid.first_name = "12345678901234567890123456"
    assert kid.invalid?
    assert_equal "is too long (maximun is 25 characters)",
          kid.errors[:first_name].join('; ')
  end
end
