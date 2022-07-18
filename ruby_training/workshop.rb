class Employee
  attr_reader :full_name
  def initialize(full_name, age, gender, address, role)
    @full_name = full_name
    @age = age
    @gender = gender
    @address = address
    @role = role
  end
  def display_details(emp)
    puts "Full Name: #{@full_name}"
    puts "Age: #{@age}"
    puts "Gender: #{@gender}"
    puts "Address: #{@address}"
    puts "Role: #{@role}"
    if @role == "worker"
      puts "Level: #{emp.level}" 
    elsif @role == "engineer"
      puts "Major: #{emp.major}" 
    else
      puts "Task: #{emp.work}" 
    end
  end
end
class Worker < Employee
  attr_reader :level
  def initialize(full_name, age, gender, address, level_)
    super(full_name, age, gender, address, "worker")
    @level = level_
  end
end
class Engineer < Employee
  attr_reader :major
  def initialize(full_name, age, gender, address, major_)
    super(full_name, age, gender, address, "engineer")
    @major = major_
  end
end
class Officer < Employee
  attr_reader :work
  def initialize(full_name, age, gender, address, work_)
    super(full_name, age, gender, address, "office worker")
    @work = work_
  end
end
class EMS
  @emp_list
  def initialize
    @emp_list = []
  end
  def add(emp)
    @emp_list.append(emp)
  end
  def find(name_query)
    for emp in @emp_list do
      if emp.full_name == name_query
        emp.display_details(emp)
      end
    end
  end
  def display_employees
    for emp in @emp_list do
      emp.display_details(emp)
      puts "==================="
    end
  end
end
newBranch = EMS.new
Eng1 = Engineer.new("John Doe", 30, "M", "11 Backstreet, CA", "Chemical Engineering")
Office1 = Officer.new("Jane Koch", 31, "F", "69 Oliver Town, AK", "Legal Paper")
newBranch.add(Eng1)
newBranch.add(Office1)
newBranch.find("James Cook")
newBranch.display_employees