require_relative('../models/student')
require_relative('../models/house')
require_relative('../models/sorting_hat')

Student.delete_all()
House.delete_all()


student1 = Student.new({
  'first_name' => 'Chris',
  'second_name' => 'Murphy',
  'age' => 26
  })

student1.save()

student2 = Student.new({
  'first_name' => 'Ria',
  'second_name' => 'Koronidi',
  'age' => 31
  })

student2.save()

student3 = Student.new({
  'first_name' => 'Ron',
  'second_name' => 'Weasley',
  'age' => 16
  })

student3.save()

student4 = Student.new({
  'first_name' => 'Jeff',
  'second_name' => 'Bridges',
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

sorting_hat1 = SortingHat.new({

  'house_id' => house1.id,
  'student_id' => student1.id

  })

 sorting_hat1.save()

 sorting_hat2 = SortingHat.new({

   'house_id' => house2.id,
   'student_id' => student2.id

   })

  sorting_hat2.save()

  sorting_hat3 = SortingHat.new({

    'house_id' => house3.id,
    'student_id' => student3.id

    })

   sorting_hat3.save()

   sorting_hat4 = SortingHat.new({

     'house_id' => house4.id,
     'student_id' => student4.id

     })

    sorting_hat4.save()

    p "#{student1.assign_student_to_house()} has house #{house1.name}"
