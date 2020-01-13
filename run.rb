require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#--------------------------Manager----------------------
elon = Manager.new("Elon Musk", "Tesla", 34)
bill = Manager.new("Bill Gates", "Microsoft", 54)
steve = Manager.new("Steve Jobs", "Apple", 52)

#--------------------------Employee----------------------
tyler1 = bill.hire_employee("Tyler", 80_000)
joey1 = bill.hire_employee("Joey", 65_000)
leroy1 = steve.hire_employee("Leroy", 45_000)
peter1 = steve.hire_employee("Peter", 75_000)
jimmy1 = elon.hire_employee("Jimmy", 95_000)
john1 = elon.hire_employee("John", 120_000)



binding.pry
puts "done"
