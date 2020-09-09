
require 'nokogiri'
require 'httparty'
require 'byebug'

class Scraper
 
    def self.workout_info
        url = "https://www.self.com/gallery/bodyweight-exercises-you-can-do-at-home"
        unparsed_page = HTTParty.get(url)
            #get request for the url you would like to scrape
        parsed_page = Nokogiri::HTML(unparsed_page)
            #Nokogiri parses the HTML of the entire page from the url 

        workout_text = parsed_page.css('div.gallery-slide-caption')
            #workout_text is an array of data for all 53 workouts

        workout_array = []
            #create an empty array to push in only the info you want

        workout_text.each do |workout|
            #this loop goes through all 53 divs holding the workout container and 
            #adds the text we want as the value to our :name and :description keys
            text = {
                name: workout.css('h2.gallery-slide-caption__hed').text,
                description: workout.css('div.gallery-slide-caption__dek').text
            }
            workout_array << text
            #for each div of information we are pushing the "text" hash into our workout_array
        end
        workout_array 
            #workout_array holds an array of hashs for all 53 workouts with name and description keys
    end 
    
end









