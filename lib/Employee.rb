class Employee
    attr_accessor :name, :salary, :manager
    @@all = []

    def initialize(name, salary = 50_000, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def manager_name
        self.manager.name
    end

    def self.paid_over(amount)
        self.all.select { |employee| employee.salary > amount}
    end

    def self.find_by_department(department)
        self.all.find { |employee| employee.manager.department == department }
    end

    def tax_bracket
        Employee.all.select do |employee| 
            if employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000
                employee
            end
        end
    end

    def self.all
        @@all
    end
# Employee#tax_bracket
#   returns an Array of all the employees whose salaries are within $1000 
    #(± 1000) of the employee who invoked the method

end
