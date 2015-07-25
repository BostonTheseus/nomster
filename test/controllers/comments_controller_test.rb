require 'test_helper'

class CommentsControllerTest < ActionController::TestCase

	test "comment creation" do
		user = FactoryGirl.create(:user)
		sign_in user
		@place = FactoryGirl.create(:place, :user => user)
		post :create, :place_id => @place.id, :comment => {
				:message => "Yolo", 
				:rating => "1_star"
		}

		assert_redirected_to place_path(@place)
	end
end