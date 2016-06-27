class Employee
  attr_reader :name, :salary
  def name=(name)
    if name == ""
      raise "Name cannot be blank"
    end
    @name = name
  end

  def salary=(salary)
    if salary < 0
      raise "Salary cannot be #{salary}"
    end
    @salary = salary
  end
  def initialize
    @name = "Crappy sisters"
    @salary = 0.0
  end
  def pay_stub
    puts "Name: #{@name}"
    pay_for_period = (@salary / 365.0) * 14

    formatted_pay = format("%.2f", pay_for_period)
    puts "Pay this period: $#{formatted_pay}"
  end

end
employee = Employee.new
#employee.name = "Crappy Day"
employee.salary = 50000
employee.pay_stub
