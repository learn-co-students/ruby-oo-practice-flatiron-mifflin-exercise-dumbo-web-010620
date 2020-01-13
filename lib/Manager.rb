class Manager
    attr_accessor :name, :department, :age, :salary

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self)
    end

    def employees
        Employee.all.select { |employee| employee.manager == self }
    end

    def self.all_departments
        self.all.map { |managers| managers.department }
    end

    def self.average_age
        total_age = self.all.map { |managers| managers.age}.sum
        total_managers = self.all.length
        avg = (total_age/total_managers).to_f
    end

    def self.all
        @@all
    end
end
