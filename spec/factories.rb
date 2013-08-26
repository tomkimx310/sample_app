FactoryGirl.define do
	factory :user do
		name				"Tom Kim"
		email				"tom.kim@gmail.com"
		password		"foobar"
		password_confirmation	"foobar"
	end
end