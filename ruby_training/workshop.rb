def write_hello
  puts "hello kernel".capitalize.reverse
  puts 1+1
end
write_hello
cars = ["merc", "bentley", "royce", "maserati", "lambo"]
cars.reverse.each{|c| puts c}
puts cars.select{|fav_brand| fav_brand == "bentley"}
puts "hol'up something ain't right"
