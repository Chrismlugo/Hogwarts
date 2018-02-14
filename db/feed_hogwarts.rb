require_relative('../models/student')
require_relative('../models/house')

Student.delete_all()
House.delete_all()


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


house1 = House.new({
  'name' => 'Gryffindor',
  'logo' => 'https://vignette.wikia.nocookie.net/harrypotter/images/9/96/Gryffindor_crest_by_tuliipiie-d491bqc.jpg/revision/latest?cb=20130508231701'
  })

house1.save()


house2 = House.new({
    'name' => 'Slytherin',
    'logo' => 'https://cdn.shopify.com/s/files/1/2393/5817/products/Harry-Potter-Slytherin-Crest-Kids-T-Shirt-Logo-Web_1400x.jpg?v=1511172841'
    })

house2.save()

house3 = House.new({
      'name' => 'Hufflepuff',
      'logo' => 'https://wizardsandwhatnot.com/wp-content/blogs.dir/369/files/2016/06/hufflepuff_crest.jpg'
      })

house3.save()

house4 = House.new({
        'name' => 'Ravenclaw',
        'logo' => 'https://cdn1.bigcommerce.com/n-ou1isn/ydriczk/products/88363/images/91130/Harry-Potter-Ravenclaw-Crest-Official-wall-mounted-cardboard-cutout-buy-now-at-star__86173.1507640763.450.659.jpg?c=2'
        })

house4.save()
