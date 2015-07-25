require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
    test "user_dashboard" do
		user = FactoryGirl.create(:user)
		sign_in user
		get :show, :place => place.id
		assert_response :success
	
	end
end