require_relative('../db/sql_runner')

class SortingHat
  attr_reader :id
  attr_accessor :house_id, :student_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @house_id = options['house_id'].to_i
    @student_id = options['student_id'].to_i
  end


def save()
  sql = "INSERT INTO sorting_hat(
  house_id, student_id
  )
  VALUES
  ($1,$2) RETURNING id"
  values = [@house_id, @student_id]
  sorting = SqlRunner.run(sql, values)
  @id = sorting.first()['id'].to_i
end

end
