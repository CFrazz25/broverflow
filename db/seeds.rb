30.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

15.times do
  Question.create(title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, user_id: rand(15))
end

30.times do
  Answer.create(body: Faker::Lorem.paragraph, user_id: rand(15), question_id: rand(15))
end


