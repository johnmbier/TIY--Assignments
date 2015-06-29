
class DjSwudController < ApplicationController
  def index
  end

  def random_word
  	response = 'http://randomword.setgetgo.com/get.php'
  end

  def show
  end
  
  # i need to send a get request to this url: http://swapi.co/api/people/1/ in order to access the 
  # person "luke skywalker". each person has a specified number, ranging from 1 to 86. there are 86 people
  # in this api.

  # i then need to pull out the value(luke skywalker) for the "name" key, which is in position[0] of the "results" array in the 
  # parsed json. the json is a hash with 4 keys. the 'results' key contains arrays for each person. each
  # array contains hashes, but im interested in only the "name"key and "lukeskywalker" value, for the example 
  # of trying to pullout the name "luke skywalker" for the next step. 
  # I then need to check the "luke skywalker" string for any spaces, indicating a last name, and then
  # get rid of the last name so that only "Luke" is available to append the random word generated from my
  # other api. 
  #my biggest problem is trying to randomly generate a number in the url in order to get this thing 
  #to be anywhere near what i planned as a mashup project. i had an idea that was way beyond 
  #skill level in regards to bringing it to any possible functionality. I AM SCREWED!!!! 

  def person

  	person_one = Swapi.get_person 1      #returns the following STRING:
  	# "{\"name\":\"Luke Skywalker\",\"height\":\"172\",\"mass\":\"77\",\"hair_color\":\"blond\",
  	# \"skin_color\":\"fair\",\"eye_color\":\"blue\",\"birth_year\":\"19BBY\",\"gender\":\"male\",
  	# \"homeworld\":\"http://swapi.co/api/planets/1/\",\"films\":[\"http://swapi.co/api/films/7/\",
  	# \"http://swapi.co/api/films/6/\",\"http://swapi.co/api/films/3/\",\"http://swapi.co/api/films/2/\",
  	# \"http://swapi.co/api/films/1/\"],\"species\":[\"http://swapi.co/api/species/1/\"],
  	# \"vehicles\":[\"http://swapi.co/api/vehicles/14/\",\"http://swapi.co/api/vehicles/30/\"],
  	# \"starships\":[\"http://swapi.co/api/starships/12/\",\"http://swapi.co/api/starships/22/\"],
  	# \"created\":\"2014-12-09T13:50:51.644000Z\",\"edited\":\"2014-12-20T21:17:56.891000Z\",
  	# \"url\":\"http://swapi.co/api/people/1/\"}"

  	 person_one = JSON.parse person_one     #returns the following HASH:
  	#  {"name":"Luke Skywalker","height":"172","mass":"77","hair_color":"blond","skin_color":"fair",
  	#  "eye_color":"blue","birth_year":"19BBY","gender":"male","homeworld":"http://swapi.co/api/planets/1/",
  	#  "films":["http://swapi.co/api/films/7/","http://swapi.co/api/films/6/","http://swapi.co/api/films/3/",
  	#  "http://swapi.co/api/films/2/","http://swapi.co/api/films/1/"],"species":["http://swapi.co/api/species/1/"],
  	#  "vehicles":["http://swapi.co/api/vehicles/14/","http://swapi.co/api/vehicles/30/"],"starships":["http://swapi.co/api/starships/12/",
  	#  "http://swapi.co/api/starships/22/"],"created":"2014-12-09T13:50:51.644000Z","edited":"2014-12-20T21:17:56.891000Z",
  	#  "url":"http://swapi.co/api/people/1/"} 

  	person_one = person_one["results"][0]["name"]  #returns the following:
  	#"Luke Skywalker"
     

     #http http://swapi.co/api/people/schema/
     #person = JSON.parse person

  	# word = open('http://randomword.setgetgo.com/get.php') 
    
   #  puts word
  end	

  # def name
  # 	name = JSON.parse people
  #   response["results"][0]["name"]
  # end

end
