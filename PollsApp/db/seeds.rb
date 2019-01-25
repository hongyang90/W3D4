# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do 

  User.destroy_all

  hong = User.create!(username:"Hong1000")
  marianna = User.create!(username: "Marianna")
  user1 = User.create!(username: "I'm User 1")

  Poll.destroy_all

  poll1 = Poll.create!(title: " title1", user_id: hong.id)
  poll2 = Poll.create!(title: " What's good?", user_id: marianna.id)
  poll3 = Poll.create!(title: "Mmmm???", user_id: user1.id)

  Question.destroy_all

  q1 = Question.create!(text: "I dunno..", poll_id: poll1.id)
  q2 = Question.create!(text: "Why??", poll_id: poll2.id)
  q3 = Question.create!(text: "Why not??", poll_id: poll2.id)

  AnswerChoice.destroy_all

  ac1 = AnswerChoice.create!(text: "A", question_id: q1.id)
  ac2 = AnswerChoice.create!(text: "AB", question_id: q1.id)
  ac3 = AnswerChoice.create!(text: "All", question_id: q2.id)
  ac4 = AnswerChoice.create!(text: "No", question_id: q3.id)

  Response.destroy_all

  r1 = Response.create!(user_id: hong.id, answer_choice_id: ac1.id)
  r2 = Response.create!(user_id: marianna.id, answer_choice_id: ac1.id)
  r3 = Response.create!(user_id: user1.id, answer_choice_id: ac2.id)
  r3 = Response.create!(user_id: user1.id, answer_choice_id: ac3.id)



end 