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

puts "destroy comments"
Comment.destroy_all

puts "creates users"
5.times do
User.create(name: Faker::TvShows::Friends.unique.character, password: "password")
end 

Scraper.workout_info.each do |workout_hash|
    Exercise.create({
        name: workout_hash[:name],
        directions: workout_hash[:description],
        img_url: ""
    })
end

exercise_gif = ["https://media.self.com/photos/59c81783bdd6c02d85791296/master/w_1600%2Cc_limit/Fitness_08.gif","https://media.self.com/photos/57ee8dbb3429de5367e0b6cf/master/w_1600%2Cc_limit/REVERSE_LUNGE.gif"]


weekday = ["Moday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

puts "creates routines"
10.times do 
Routine.create(name: Faker::Sports::Football.player, user_id: User.all.sample.id, weekday: weekday.sample)
end 

seconds = [30, 60, 90]

puts "creates splits"
50.times do
Split.create({
    exercise_id: Exercise.all.sample.id,
    routine_id: Routine.all.sample.id,
    duration: seconds.sample
})
end


