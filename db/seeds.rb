


5.times do |n|
  name  = Faker::Name.name
  email = Faker::Internet.email
  password = "password"
  uid = User.create_unique_string
  User.create!(name: name,
               email: email,
               password: password,
               password_confirmation: password,
               uid: uid,
  )
end
5.times do |n|
  image_path = File.join(Rails.root, "test/fixtures/images/#{n+1}.png")
  content = Faker::Lorem.sentence
  user_id = rand(1..5)
  Picture.create!(
               content: content,
               user_id: user_id,
               image: File.new(image_path)
  )
end
