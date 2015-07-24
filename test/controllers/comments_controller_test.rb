require 'test_helper'

class CommentsControllerTest < ActionController::TestCase
	FactoryGirl.define do
		factory :user do
			sequence :email do |n|
				"etc#{n}@gmail.com"
			end
			password "Nine9999"
			password_confirmation "Nine9999"
		end

	end

	test "user_dashboard" do
		@user = FactoryGirl.create(:user)
		sign_in user
		get :show, :place => place.id
		assert_response :success
	end
  test "comment creation" do
  	@user = FactoryGirl.create(:user)
  	sign_in user
  	@place = FactoryGirl.create(:place)
  	post :create

  	assert_response :success

  	assert_redirected_to places_path



  end
end
