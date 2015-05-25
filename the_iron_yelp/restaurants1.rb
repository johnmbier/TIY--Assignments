
require 'json'
class Restaurant
  attr_reader :name, :address, :website, :hours, :price, :cuisines, :ratings

  

  def initialize(name, address, website, hours, price, cuisines, ratings)
    @name = name
    @address = address
    @website = website
    @hours = hours
    @price = price
    @cuisines = cuisines
    @ratings = ratings
  end
  
  def self.all 
    restaurants_file = File.read "restaurants.json"
    restaurants_array = JSON.parse restaurants_file 
   
    restaurants = restaurants_array.map do |restaurant|
      
       Restaurant.new(restaurant["name"], restaurant["address"],
                  restaurant["website"], restaurant["hours"], 
                  restaurant["price"], restaurant["cuisines"],
                  restaurant["ratings"]) 
   
      end


      return restaurants
   end 
  
  def cheap?
    @price.max <=10
  end  

  def self.cheap
     self.all.select{|r| r.cheap?} 
  end

  def to_s
    "#{@name}"
  end

  
  def self.named name
  self.all.select{|r| r.name == name}

  end                                                                                                                                                                                                                                      
 
 def avg_rating
  sum = 0.0
  ratings.each {|i| sum += i.to_f}
  sum/ratings.length.to_f
  end

  def self.max_rating 
    self.all.max_by{|r| r.avg_rating}
    
  end                  

  def american
    @cuisines.include? ("American (New)")

  end

  def self.american
        self.all.select{|restaurant| restaurant.american?}
  end

end
  
                                                                                                                                                                                                                                                                                                                                                                                                                                       



 