FactoryGirl.define do
    factory :user do
		sequence :email do |n|
			"etc#{n}@gmail.com"
		end
		password "Nine9999"
		password_confirmation "Nine9999"
	end

end

FactoryGirl.define do
	factory :place do
		place = Place.new
		name "Place"
	end
end