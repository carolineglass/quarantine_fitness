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

exercise_gifs = [
    "https://media.self.com/photos/59c81783bdd6c02d85791296/master/w_1600%2Cc_limit/Fitness_08.gif",
    "https://media.self.com/photos/57ee8dbb3429de5367e0b6cf/master/w_1600%2Cc_limit/REVERSE_LUNGE.gif",
    "https://media.self.com/photos/59aeea7cfd9d3f33d296b7ac/master/w_1600%2Cc_limit/gif3.gif",
    "https://media.self.com/photos/57ebed4f1dda7f545cbd714d/master/w_1600%2Cc_limit/MarchingGluteBridge.gif",
    "https://media.self.com/photos/597a5def35f46850de30260e/master/w_1600%2Cc_limit/knee-to-arms.gif",
    "https://media.self.com/photos/59c80412bdd6c02d85791292/master/w_1600%2Cc_limit/skater-hops.gif",
    "https://media.self.com/photos/59aeea7e31384d0e66dee265/master/w_1600%2Cc_limit/gif5.gif",
    "https://media.self.com/photos/57fe5cd2aaf6a14302f41c41/master/w_1600%2Cc_limit/STANDING_OBLIQUE_CRUNCH%2520(1).gif",
    "https://media.self.com/photos/59c810b2b2227d7913413b7f/master/w_1600%2Cc_limit/062917_fitness_17.gif",
    "https://media.self.com/photos/59aeea80fd9d3f33d296b7ae/master/w_1600%2Cc_limit/gif6.gif",
    "https://media.self.com/photos/57aa007a5b248dd83bbb1737/master/w_1600%2Cc_limit/CURTSY_LUNGE_SIDEKICK.gif",
    "https://media.self.com/photos/59a6e786d0a3e87c2f5010a5/master/w_1600%2Cc_limit/20.gif",
    "https://media.self.com/photos/59c805ebea81f306765b2880/master/w_1600%2Cc_limit/FROGGER1%2520(1).gif",
    "https://media.self.com/photos/59c817c8ea81f306765b2884/master/w_1600%2Cc_limit/Fitness_11.gif",
    "https://media.self.com/photos/57e2b922edd53cfa267dfa03/master/w_1600%2Cc_limit/PLANK_JACKS%2520(2).gif",
    "https://media.self.com/photos/59c810babdd6c02d85791294/master/w_1600%2Cc_limit/062917_fitness_18.gif",
    "https://media.self.com/photos/57aa0087d077f2273cf20474/master/w_1600%2Cc_limit/SIDE_STEP_SQUAT.gif",
    "https://media.self.com/photos/59c81311b2227d7913413b83/master/w_1600%2Cc_limit/LATERAL_PLANK_WALKS%2520(1).gif",
    "https://media.self.com/photos/59638f33427847455e70cfef/master/w_1600%2Cc_limit/062917_fitness_05.gif",
    "https://media.self.com/photos/59a6e77a912f8b75cea00753/master/w_1600%2Cc_limit/13.gif",
    "https://media.self.com/photos/57d8843650778cef321a440a/master/w_1600%2Cc_limit/SQUAT_JUMP.gif",
    "https://media.self.com/photos/59c81a69bdd6c02d8579129c/master/w_1600%2Cc_limit/Fitness_06.gif",
    "https://media.self.com/photos/57eacd33fc07bf4a790d3269/master/w_1600%2Cc_limit/Plank_Ups-new.gif",
    "https://media.self.com/photos/582ca2515950e5b245aca70e/master/w_1600%2Cc_limit/SQUAT_JACKS.gif",
    "https://media.self.com/photos/59c81784bdd6c02d85791298/master/w_1600%2Cc_limit/move4.gif",
    "https://media.self.com/photos/5943fddc4e4e9b6122499b42/master/w_1600%2Cc_limit/burpees6.gif",
    "https://media.self.com/photos/59c81f52bdd6c02d8579129e/master/w_1600%2Cc_limit/16.gif",
    "https://media.self.com/photos/57aa0081d077f2273cf20473/master/w_1600%2Cc_limit/HIP_BRIDGE.gif",
    "https://media.self.com/photos/59aeea7f928ba138b01d3d10/master/w_1600%2Cc_limit/gif7.gif",
    "https://media.self.com/photos/57a206519f633566420fe542/master/w_1600%2Cc_limit/POWER_LUNGE.gif",
    "https://media.self.com/photos/59c81ae041062372cfaba038/master/w_1600%2Cc_limit/Fitness_15.gif",
    "https://media.self.com/photos/59c8199f3b781d294ccafdca/master/w_1600%2Cc_limit/Untitled-10.gif",
    "https://media.self.com/photos/581614aa3e931a7a5ad87cb9/master/w_1600%2Cc_limit/PLIE_ONE_FOOT_RAISED.gif",
    "https://media.self.com/photos/59c8111741062372cfaba032/master/w_1600%2Cc_limit/062917_fitness_16.gif",
    "https://media.self.com/photos/59c816bcea81f306765b2882/master/w_1600%2Cc_limit/move9%2520(1).gif",
    "https://media.self.com/photos/5810d4f649a11728733b6125/master/w_1600%2Cc_limit/PLANK_TAPS.gif",
    "https://media.self.com/photos/59c81929ea81f306765b2886/master/w_1600%2Cc_limit/Untitled-17.gif",
    "https://media.self.com/photos/59c818e641062372cfaba036/master/w_1600%2Cc_limit/Fitness_13.gif",
    "https://media.self.com/photos/5812686049a11728733b6140/master/w_1600%2Cc_limit/FOREARM_SIDE_PLANK_TWIST.gif",
    "https://media.self.com/photos/59c8184bbdd6c02d8579129a/master/w_1600%2Cc_limit/move3.gif",
    "https://media.self.com/photos/59c8209cb2227d7913413b87/master/w_1600%2Cc_limit/13.gif",
    "https://media.self.com/photos/57f3b9875f7bf9bb45db3948/master/w_1600%2Cc_limit/DiamondPushup.gif",
    "https://media.self.com/photos/57c70c1c022a42d236f4aefe/master/w_1600%2Cc_limit/PLANK_T_ROTATION.gif",
    "https://media.self.com/photos/59c8187d41062372cfaba034/master/w_1600%2Cc_limit/Fitness_12.gif",
    "https://media.self.com/photos/5786a09f737bb3be07fb9605/master/w_1600%2Cc_limit/Down_Dog_Series.gif",
    "https://media.self.com/photos/59c81ac4ea81f306765b2888/master/w_1600%2Cc_limit/Untitled-6.gif",
    "https://media.self.com/photos/5817a88e6839af65340d5371/master/w_1600%2Cc_limit/MOUNTAIN_CLIMBERS.gif",
    "https://media.self.com/photos/5786a09a737bb3be07fb9604/master/w_1600%2Cc_limit/BUNNY_HOP.gif",
    "https://media.self.com/photos/59c81fcfea81f306765b288a/master/w_1600%2Cc_limit/11.gif",
    "https://media.self.com/photos/58126868ff42479b58d5a9a4/master/w_1600%2Cc_limit/VUp.gif",
    "https://media.self.com/photos/592746df8ac16b353cb97c81/master/w_1600%2Cc_limit/move12.gif",
    "https://media.self.com/photos/59c81ab5b2227d7913413b85/master/w_1600%2Cc_limit/Untitled-7.gif",
    "https://media.self.com/photos/59c82042bdd6c02d857912a0/master/w_1600%2Cc_limit/15.gif"
]


Scraper.workout_info.each do |workout_hash|
    Exercise.create({
        name: workout_hash[:name],
        directions: workout_hash[:description],
        img_url: ""
    }) 
end


# exercise_gifs.each do |workout_img|
#     Exercise.all.each do |exercise|
#         exercise.update(img_url: workout_img)
#     end 
# end

weekday = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

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


