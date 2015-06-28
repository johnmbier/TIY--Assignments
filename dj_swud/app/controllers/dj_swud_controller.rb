
class DjSwudController < ApplicationController
  def index
  end

  def random_word
  	response = 'http://randomword.setgetgo.com/get.php'
  end

  def show
  	person = Swapi.get_person 1
  #person = JSON.parse person

  	# word = open('http://randomword.setgetgo.com/get.php') 
    
   #  puts word
  end	

  # def name
  # 	name = JSON.parse people
  #   response["results"][0]["name"]
  # end

end
