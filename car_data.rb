

car_strings = IO.readlines("mtcars.csv")

class Car
  attr_reader :name, :gas_mileage, :n_cylinders, :horsepower, :weight, :quarter_mile_time 

            def initialize(name, gas_mileage, n_cylinders, horsepower, weight, quarter_mile_time)

                @name = name
                @gas_mileage = gas_mileage
                @n_cylinders = n_cylinders
                @horsepower = horsepower
                @weight = weight
                @quarter_mile_time = quarter_mile_time

            end

end

cars = car_strings.map do |car_strings|
       car_strings.gsub!('"','')
       car_array = car_strings.split(",")
       car_hash = { "name" => car_array[0],
                   "gas_mileage" => car_array[1].to_i,
                   "n_cylinders" => car_array[2].to_i,
                    "horsepower" => car_array[4].to_i,
                    "weight" => car_array[6].to_i,
                    "quarter_mile_time" => car_array[7].to_i }
end
        

#puts cars.max_by {|car| car ["gas_mileage"]}["name"] + " has the best gas mileage"
#puts cars.select {|car| car ["weight"] > 3.5 } .map {|car| car["name"]}
#puts "are all land yachts"

puts cars.select {|car| car ["horsepower"] > 200 } .map {|cars| "the powerful " + cars["name"]}

puts cars.select {|car| car ["gas_mileage"] > 25 } .map {|cars| "fuel efficient " + cars["name"]}
