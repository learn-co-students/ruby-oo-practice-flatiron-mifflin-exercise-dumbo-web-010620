require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here

#--------------------------Manager----------------------
elon = Manager.new("Elon Musk", "Tesla", 34)
bill = Manager.new("Bill Gates", "Microsoft", 54)
steve = Manager.new("Steve Jobs", "Apple", 52)

#--------------------------Employee----------------------
tyler1 = bill.hire_employee("Tyler", 66_000)
joey1 = bill.hire_employee("Joey", 65_000)
leroy1 = steve.hire_employee("Leroy", 62_000)
peter1 = steve.hire_employee("Peter", 64_000)
jimmy1 = elon.hire_employee("Jimmy", 68_000)
john1 = elon.hire_employee("John", 67_000)



binding.pry
puts "done"
