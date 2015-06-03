require "webrick"
require "erb"
require "json"
require "./restaurants1"

server = WEBrick::HTTPServer.new(:Port => 8000)

restaurants_file = File.read "restaurants.json"
restaurants_array = JSON.parse restaurants_file 

  server.mount_proc "/home" do |request, response|
	response.body = File.read "yelp_home.html"
  end

  server.mount_proc "/shutdown" do |request, response|
	response.body = "Bye Bye"
	server.shutdown
  end
  
  server.mount_proc "/The Rusty Spoon" do | request, response|
   @restaurants = Restaurant.named "The Rusty Spoon"
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  
  end


  server.mount_proc "/Artisans Table" do | request, response|
   @restaurants = Restaurant.named "Artisans Table" 
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  
  end
   
   server.mount_proc "/Super Rico" do | request, response|
   @restaurants = Restaurant.named "Super Rico Columbian Bistro" 
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  
   end

   server.mount_proc "/The Flame Broiler" do | request, response|
   @restaurants = Restaurant.named "The Flame Broiler" 
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  
   end
  
   server.mount_proc "/Le Gourmet Break" do | request, response|
   @restaurants = Restaurant.named "Le Gourmet Break" 
    template = ERB.new(File.read "restaurant.html.erb")
    response.body = template.result
  
   end




  server.start