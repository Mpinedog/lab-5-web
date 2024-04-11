# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.delete_all
Post.delete_all

# Create additional users
10.times do |n|
    name = Faker::Name.unique.name
    email = Faker::Internet.unique.email
    password = Faker::Internet.password(min_length: 6)
  
    User.create!(
      name: name,
      email: email,
      password: password
    )
  end
  
  # Create additional posts
  10.times do |n|
    title = Faker::Lorem.sentence
    content = Faker::Lorem.paragraph
    user_id = rand(1..10) # Assuming there are already 10 users including the initial one
    published_at = Faker::Date.backward(days: 30)
    answers_count = rand(0..10)
    likes_count = rand(0..20)
  
    Post.create!(
      title: title,
      content: content,
      user_id: user_id,
      published_at: published_at,
      answers_count: answers_count,
      likes_count: likes_count
    )
  end
