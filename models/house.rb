require_relative('../db/sql_runner')

class House
  attr_reader :id
  attr_accessor :name, :logo


  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end

  def save()
    sql = "INSERT INTO houses (
    name,
    logo
    )
    VALUES
    ($1,$2) RETURNING *"
    values = [@name, @logo]
    house = SqlRunner.run(sql, values)
    @id = house.first()['id'].to_i
  end


  def self.find(id)
    sql = "SELECT * FROM houses WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = Student.new(house.first)
    return result
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map{|house| House.new(house)}
    return result
  end
  

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
