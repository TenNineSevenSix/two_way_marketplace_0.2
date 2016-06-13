puts 'SETTING UP DEFAULT USER LOGIN'
user1 = User.create!(:email => 'user1@email.com', :password => '12345678', :password_confirmation => '12345678')
puts 'New user created: ' << user1.email
user2 = User.create!(:email => 'user2@email.com', :password => '12345678', :password_confirmation => '12345678')
puts 'New user created: ' << user2.email
user1.add_role :admin
user2.add_role :student


StudentProfile.create(user_id: user2.id, first_name: 'user2')

(10..20).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678')
  TutorProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} English")
  u.add_role :tutor
end

(21..31).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  StudentProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Chemistry")
  u.add_role :student
end

(32..41).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  StudentProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Drama")
  u.add_role :student
end


(42..51).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  TutorProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Programming")
  u.add_role :tutor
end

(110..120).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678')
  TutorProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Chemistry")
  u.add_role :tutor
end

(121..131).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  StudentProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} English")
  u.add_role :student
end

(132..141).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  StudentProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Programming")
  u.add_role :student
end


(142..151).each do |num|
  u = User.create!(:email => "user#{num}@email.com", :password => '12345678', :password_confirmation => '12345678')
  TutorProfile.create!(user_id: u.id, first_name: "user#{num}", suburb: "suburb#{num}", state: "state#{num}", country: "Australia", categories: "category#{num} Drama")
  u.add_role :tutor
end
