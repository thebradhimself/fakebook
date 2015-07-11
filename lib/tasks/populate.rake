namespace :db do
  desc "Create 100 vehicles with random names and descriptions"
  task :populate => :environment do
	require 'populator'
	require 'faker'
  require 'literate_randomizer'

  User.populate 1 do |a|
    a.email = Faker::Internet.email
    a.encrypted_password = User.new(:password => 'password', :password_confirmation => 'password').encrypted_password
    a.sign_in_count = 5
    a.username = Faker::Internet.user_name
    a.name = Faker::Name.name
    a.city = Faker::Address.city
    a.state = Faker::Address.state
    a.country = Faker::Address.country
    a.birthday = Faker::Date.between(150.years.ago, Date.today)
    a.image_location = Faker::Avatar.image
  end

  Status.populate 100 do |v|
    v.status_update = LiterateRandomizer.sentence
    v.user_id = User.all.sample.id
  end
end
end
