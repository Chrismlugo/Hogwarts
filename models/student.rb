require_relative('../db/sql_runner')

class Student
  attr_accessor :first_name, :second_name, :age
  attr_reader :id

  def initialize(options)
    @id = options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @age = options['age'].to_i
  end


  def save()
    sql = "INSERT INTO students
    (
      first_name,
      second_name,
      age
    )
    VALUES
    (
      $1,$2,$3
    )
    RETURNING *"
    values = [@first_name,@second_name,@age]
    students = SqlRunner.run(sql,values)
    @id = students.first()['id'].to_i
  end

  def update()
    sql = "UPDATE students
    SET (
      first_name,
      second_name,
      age
      ) = ($1,$2,$3) WHERE id = $4"
      values = [@first_name,@second_name,@age,@id]
      SqlRunner.run(sql,values)
    end

    def self.find(id)
      sql = "SELECT * FROM students WHERE id = $1"
      values = [id]
      student = SqlRunner.run(sql, values)
      result = Student.new(student.first)
      return result
    end

    def assign_student_to_house()
      sql = "SELECT houses.* FROM houses INNER JOIN sorting_hat ON houses.id = sorting_hat.student_id WHERE student_id = $1"
      values = [@id]
      hash = SqlRunner.run(sql,values)
      final = hash.map{|result| Student.new(result)}
      return result.first_name
    end

    def self.all()
      sql = "SELECT * FROM students"
      students = SqlRunner.run(sql)
      result = students.map{|student| Student.new(student)}
      return result
    end

    def self.delete_all()
      sql = "DELETE FROM students"
      SqlRunner.run(sql)
    end

  end
