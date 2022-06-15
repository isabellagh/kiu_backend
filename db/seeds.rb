# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Trainer.destroy_all
Client.destroy_all

t1 = Trainer.create(name: "Goku", email: "goku@usa.com", password: "123456", image: "https://media.interaksyon.com/wp-content/uploads/2020/01/Son-Goku-640x427.jpg")
t2 = Trainer.create(name: "Veggeta", email: "vegetta@usa.com", password: "123456", image: "https://pbs.twimg.com/profile_images/1208886231473328128/jvtvdEbM_400x400.jpg")
t3 = Trainer.create(name: "Piccolo", email: "piccolo@usa.com", password: "123456", image: "https://numeralpaint.com/wp-content/uploads/2021/02/Piccolo-Dragon-Ball-paint-by-numbers.jpg")

c1 = Client.create(name: "Hommer", age: 40, image: "https://learningwithliz.files.wordpress.com/2011/05/simpsons.png", gender: "Male", email: "hommer@usa.com", goal: "Loose weight", trainer_id: 1)
c2 = Client.create(name: "Marge", age: 38, image: "https://m.media-amazon.com/images/M/MV5BYmE4ZGZmNWUtOGY2Yi00MjhkLTg3NDAtMjAwMDM1Yjc4MWM4XkEyXkFqcGdeQXVyNTU3MTEyMzY@._V1_.jpg", gender: "Female", email: "marge@usa.com", goal: "Strenght", trainer_id: 2)
c3 = Client.create(name: "Lisa", age: 10, image: "https://i.pinimg.com/736x/77/31/3d/77313dfd83eb2530e046f5c11b138c12.jpg", gender: "Female", email: "lisa@usa.com", goal: "Fit brain", trainer_id: 3)

puts "Succeeded"