namespace :db do 
	desc "Fill database with sample data"
	task populate: :environment do
		User.create!(name: "Example User",
								 email: "example@footprint.com",
								 password: "password",
								 password_confirmation: "password")
		admin.toggle!(:admin)
		99.times do |n|
			name = Faker::Name.name
			email = "example-#{n+1}@footprint.com"
			password = "password"
			User.create!(name: name,
									 email: email,
									 password: password,
									 password_confirmation: password)
		end
	end
end
