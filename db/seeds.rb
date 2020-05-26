# require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "destroy exercises"
Exercise.destroy_all

puts "destroy routines"
Routine.destroy_all

puts "destroy splits"
Split.destroy_all

puts "destroy users"
User.destroy_all

puts "destroy weekdays"
Weekday.destroy_all

puts "destroy comments"
Comment.destroy_all

puts "creates users"
5.times do
User.create(name: Faker::TvShows::Friends.unique.character)
end 

puts "creates exercise"
25.times do
Exercise.create({
    name: Faker::Dessert.variety,
    directions: Faker::TvShows::MichaelScott.quote, 
    img_url: nil
    })
end 

puts "creates routines"
10.times do 
Routine.create(name: Faker::Sports::Football.player, user_id: User.all.sample.id)
end 

puts "creates weekdays"
Weekday.create(name: "Monday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Tuesday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Wednesday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Thursday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Friday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Saturday", routine_id: Routine.all.sample.id)
Weekday.create(name: "Sunday", routine_id: Routine.all.sample.id)

seconds = [30, 60, 90]

puts "creates splits"
50.times do
Split.create({
    exercise_id: Exercise.all.sample.id,
    routine_id: Routine.all.sample.id,
    duration: seconds.sample
})
end


