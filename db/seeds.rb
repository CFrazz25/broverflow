15.times do
  User.create(username: Faker::Internet.user_name, email: Faker::Internet.email, password: "password")
end

Question.create(title: "Does anybody have any weed?", body: "Aye, yo. In need of some weed bro. My homie Tanner is my connect and he's sailing with his dad in the Pacific. I could ask my other homie Scooter but he's gonna go shopping for some Chubbies with his gf. Let me know if you guys got any.", user_id: 8)

Question.create(title: "How do I improve my keg stand time?", body: "Sup broskis. Need help increasing my keg stand all time record. Otherwise, Sigma Lamda Epsilon might kick me out after rush week.", user_id: 6)

Question.create(title: "I lost my Wayfarers.", body: "Has anybody seen them?", user_id: 12)

Question.create(title: "Do you have any post-workout?", body: "I'm trying to get SWOLLEEEEEE. Also what kinda protein do you guys use? In need of some good BCAA's too.", user_id: 4)

Question.create(title: "Should I order the mint green polo or George W. Blue?", body: "Trying to buy some khakis. Got my dad's card so money's not an issue.", user_id: 1)

Question.create(title: "Do you think if I throw up, I’ll be able to drink more?", body: "I had two shots of Yager, 4 bong hits, 3 pills of e, and a cheeseburger.", user_id: 2)

Answer.create(body: "I gotchu bro. Come thru ill hook it up.", user_id: 1, question_id: 1)
Answer.create(body: "Let's go get Taco Bell.", user_id: 2, question_id: 1)
Answer.create(body: "I trained by holding my breath underwater every day for 6 years.", user_id: 3, question_id: 2)
Answer.create(body: "Sigma Lamda Epsilon sucks! Beta Beta Alpha RULES!! WWWOOOOOOOOOOOO", user_id: 4, question_id: 2)
Answer.create(body: "http://www.ray-ban.com/usa/sunglasses/clp?pid=IP01_G-BRD-Core-TM-BMM_TM-All_+rayban", user_id: 5, question_id: 3)
Answer.create(body: "Fuck this. Let’s go to the bars.", user_id: 6, question_id: 3)
Answer.create(body: "NO EXPLODE BROOOO", user_id: 11, question_id: 4)
Answer.create(body: "PLEDGEEEEEEEEEEE!! and ill hook you up bro", user_id: 12, question_id: 4)
Answer.create(body: "Is he wearing cargos?", user_id: 7, question_id: 5)
Answer.create(body: "Come back to the frat castle. I'll give you my salmon pants.", user_id: 8, question_id: 5)
Answer.create(body: "I am way too sober for this party.", user_id: 9, question_id: 6)
Answer.create(body: "It depends on who my big is as to how much beer I drink.", user_id: 10, question_id: 6)



