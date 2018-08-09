require_relative('../db/sql_runner')

class House

  attr_reader :id, :house_name, :logo

  def initialize(options)
    @id = options['id'].to_i
    @house_name = options['house_name']
    @logo = options['logo']

  end

  def save()
    sql = "INSERT INTO houses (
    house_name,
    logo
    )
    VALUES ($1, $2)
    RETURNING *"
    values = [@house_name, @logo]
    house_data = SqlRunner.run(sql, values)
    @id= house_data.first()['id'].to_i
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
