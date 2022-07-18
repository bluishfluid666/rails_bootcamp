def write_hello
  puts "hello kernel".upcase.reverse
  puts "kannible"
end
write_hello
cars = ["merc", "bentley", "royce", "maserati", "lambo"]
cars.reverse.each{|c| puts c}
puts cars.select{|fav_brand| fav_brand == "bentley"}
