# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             searcher_role: true,
             administrator_role: true,
             analyst_role: true,
             moderator_role: true,
             activated_at: Time.zone.now)             

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  bool_searcher_role = false
  bool_administrator_role = false
  bool_analyst_role = false
  bool_moderator_role = false  
  
  
#   this part is for different role  
  if (n>0 && n<25) 
    bool_searcher_role = true      
  end
  if (n>=25 && n<50) 
    bool_administrator_role = true      
  end
  if (n>=50 && n<75) 
    bool_analyst_role = true      
  end
  if (n>=75 && n<99) 
    bool_moderator_role = true      
  end
#   this part is for different role    
  
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
                searcher_role: bool_searcher_role,
                administrator_role: bool_administrator_role,
                analyst_role: bool_analyst_role,
                moderator_role: bool_moderator_role,             
               activated_at: Time.zone.now)               
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end



# Following relationships
users = User.all
user  = users.first
following = users[2..50]
followers = users[3..40]
following.each { |followed| user.follow(followed) }
followers.each { |follower| follower.follow(user) }



#Following for Evidence_sources
20.times do |n|
  EvidenceSource.create!(
                research_level:           Faker::Number.digit,
                created_at:               Time.zone.now,
                updated_at:               Time.zone.now,             
                rating:                   Faker::Number.digit,
                title:                    Faker::Commerce.department(5),
                author:                   Faker::Name.name,
                year_number:              Date.new(2015,1,1),
                source:                   Faker::Company.name,
                journal_book:             Faker::Company.name,
                publisher:                Faker::Name.name,
                DOI:                      Faker::PhoneNumber.phone_number,
                number:                   Faker::Number.digit,
                volume:                   Faker::Number.digit,
                page_numbers:             Faker::Number.digit,
                is_passed:                0,
                submitter_id:             1,
                moderator_id:             1)   
end                
                

99.times do |n|

  if (n>0 && n<25) 
    value_isPassed = nil      
  end
  if (n>=25 && n<50) 
    value_isPassed = true      
  end
  if (n>=50 && n<75) 
    value_isPassed = false      
  end

  EvidenceSource.create!(
                research_level:           Faker::Number.digit,
                created_at:               Time.zone.now,
                updated_at:               Time.zone.now,             
                rating:                   Faker::Number.digit,
                title:                    Faker::Commerce.department(5),
                author:                   Faker::Name.name,
                year_number:                     Date.new(2015,1,1),
                source:                   Faker::Company.name,
                journal_book:             Faker::Company.name,
                publisher:                Faker::Name.name,
                DOI:                      Faker::PhoneNumber.phone_number,
                number:                   Faker::Number.digit,
                volume:                   Faker::Number.digit,
                page_numbers:             Faker::Number.digit,
                is_passed:                 value_isPassed,
                submitter_id:             1+Random.rand(90),
                moderator_id:             1+Random.rand(90))               
end

# Following for evidence_item
99.times do |n|
  EvidenceItem.create!(
                context_how: Faker::Name.name,
                context_why: Faker::Name.name,
                context_who: Faker::Name.name,
                context_what: Faker::Name.name,
                context_where: Faker::Name.name,
                context_when: Faker::Number.digit,
                benefit:      Faker::Number.digit,
                result:       Faker::Number.digit)
end

# Following for latest news
users_for_news = User.all
3.times do
  content = Faker::Lorem.sentence(5)
  y = Random.rand(90)
  #puts y
  users_for_news.each { |this_user| this_user.received_news.create!(content: content,  sender_id:  y, receiver_id:  User.all.take(1).first.id, read: true) }
end
