def write_hello
  puts "hello kernel, i am inferno".capitalize
end
write_hello
cars = ["merc", "bentley", "royce", "maserati", "lambo"]
cars.reverse.each{|c| puts c}
puts cars.select{|fav_brand| fav_brand == "bentley" || fav_brand == "maserati"}
puts "hol'up something ain't right"
