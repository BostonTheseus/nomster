require 'test_helper'

class UsersControllerTest < ActionController::TestCase


	test "user dashboard displays" do
		user = User.create!(:email => "bob@test.com", :password => "password")
		get :show, :id => user.id
		assert_response(:success)


	end


end
