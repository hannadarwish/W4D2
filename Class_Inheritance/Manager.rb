require_relative "Employee"

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary)
        super
        @employees = []
    end

    def add_employee(employee)
        if employee.is_a?(Manager)
            @employees += employee.employees
        end
        @employees << employee
    end

    def bonus(multiplier)
        sum = 0
        @employees.each do |employee|
            sum += employee.salary
        end
        bonus = sum * multiplier
    end
end