require 'test_helper'

class UserTest < ActiveSupport::TestCase
   	test "should not save user without username" do
		user = User.new
		assert !user.save, "Saved user without username"
	end

	test "should have valid email" do
		@user = User.new
		addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                     foo@bar_baz.com foo@bar+baz.com]
      	addresses.each do |invalid_address|
        	@user.email = invalid_address
        	expect(@user).not_to be_valid
        end
	end
end
