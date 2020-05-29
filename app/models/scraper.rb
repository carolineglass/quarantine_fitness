require 'nokogiri'
require 'httparty'
require 'byebug'

class Scraper
    
def self.workout_info
    url = "https://www.self.com/gallery/bodyweight-exercises-you-can-do-at-home"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    workout_text = parsed_page.css('div.gallery-slide-caption')
    #data for 53 workouts
    workout_array = []
    workout_text.each do |workout|
        text = {
            name: workout.css('h2.gallery-slide-caption__hed').text,
            description: workout.css('div.gallery-slide-caption__dek').text
        }
        workout_array << text
        #workout_array holds a hash of all 53 workouts with name and description
    end
    workout_array 
end 

end

