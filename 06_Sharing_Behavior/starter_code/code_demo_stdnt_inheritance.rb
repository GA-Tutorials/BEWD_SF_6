
#Sharing Behavior and Variables
#TIME: 20 min

# Create an employee class.
class Employee


end

# A manager is contactable by email,
# and wants their title as part of their name display
class Manager < Employee


end

# A marketer can be contacted via twitter
# but is fine with the default name display
class Marketer < Employee


end


employees = []

# add some employees
employees.each do |employee|
  puts "#{employee.full_name} | #{employee.contact}"
end

# BONUS: Demonstrate how to make this code less error-prone by using named arguments
#        for the initializers
