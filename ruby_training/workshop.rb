class Employee 
  def initialize(full_name, age, gender, address)
    @full_name = full_name
    @age = age
    @gender = gender
    @address = address
  end
end
class Worker < Employee
  def setLevel(lvl)
    @level = lvl
  end
end
class Engineer < Employee
  def setMajor(major_)
    @major = major_
  end
end
class Officer < Employee
  def setWork(work_)
    @work = work_
  end
end
class EMS
  @wrkr;
  @eng;
  @office;
  @emp_list = []
  def add(emp)
    emp_list.append(emp)
  end
end