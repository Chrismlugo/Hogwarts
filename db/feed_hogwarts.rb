require_relative('../models/student')

Student.delete_all()


student1 = Student.new({
  'first_name' => 'Chris',
  'second_name' => 'Murphy',
  'house' => 'Gryffindor',
  'age' => 26
  })

student1.save()

student2 = Student.new({
  'first_name' => 'Ria',
  'second_name' => 'Koronidi',
  'house' => 'Gryffindor',
  'age' => 31
  })

student2.save()

student3 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'house' => 'Ravenclaw',
  'age' => 16
  })

student3.save()

student4 = Student.new({
  'first_name' => 'Jeff',
  'second_name' => 'Bridges',
  'house' => 'Hufflepuff',
  'age' => 60
  })

student4.save()
