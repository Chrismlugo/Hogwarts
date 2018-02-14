require_relative('../models/student')


student1 = Student.new({
  'first_name' => 'Chris',
  'second_name' => 'Murphy',
  'house' => 'Gryffindor',
  'age' => 26
  })

student1.save()
