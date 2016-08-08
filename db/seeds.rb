10.times do |n|
    name  = Faker::Name.name
    email = Faker::Internet.email
    content = Faker::Lorem.sentence(5)
    user_id = Faker::Number.between(1, 10)
    # image = Faker::Avatar.image
    password = "password"
    User.create!(name: name,
                email: email,
                password: password,
                password_confirmation: password)
    Picture.create!(user_id: user_id,
                    content: content,
                    # image: image
                    )
end
