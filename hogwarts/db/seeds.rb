require_relative('../models/students')
require_relative("../models/houses")
require ('pry')

House.delete_all()
Student.delete_all()

student1 = Student.new ({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house" => "Gryffindor",
  "age" => 20
})

student2 = Student.new ({
  "first_name" => "Draco",
  "last_name" => "Malfoy",
  "house" => "Slytherin",
  "age" => 21
})

student1.save()
student2.save()

house1 = House.new({
  "house_name" => "Slytherin",
  "logo" => "images/Slyth.jpg"
})

house2 = House.new({
  "house_name" => "Gryffindor",
  "logo" => "images/gryff.png"
})

house3 = House.new({
  "house_name" => "Ravenclaw",
  "logo" => "images/raven.jpg"
})

house4 = House.new({
  "house_name" => "Hufflepuff",
  "logo" => "images/huff.png"
})

house1.save()
house2.save()
house3.save()
house4.save()

binding.pry
nil
