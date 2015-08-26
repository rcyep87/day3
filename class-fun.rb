# class Student
#   CAMPUS = 'ATX'
#   def sleep
#     puts "Goes to bed"
#   end

#   def study
#     puts "studies"
#   end

# end

# VERSION = "1.1.1"


# # Creating an instance of the class Student and
# # Assigning it to the variable 'jacob'
# # Without this you wouldn't be able to call the method
# jacob = Student.new
# jacob.study
# jacob.sleep

# VERSION
# CAMPUS
# Student::CAMPUS #to access CAMPUS you have to go through Student

# # ------------================---------------

# class Student

#   def initialize
#     @bed_time = "Didn't sleep yet"
#     @awake_time = "Not yet"

#   def wakes_up
#     @awake_time = Time.now
#     puts "Went to bed at #{@bed_time} and woke up at #{@awake_time}"
#     "Wakes up"
#   end

#   def sleep
#     @bed_time = Time.now
#     puts "Goes to bed at #{@bed_time}"
#   end

#   def study
#     puts "studies"
#   end
# end

# VERSION = "1.1.1"


# # Creating an instance of the class Student and
# # Assigning it to the variable 'jacob'
# # Without this you wouldn't be able to call the method
# jacob = Student.new
# sarah = Student.new
# jacob.sleep
# sarah.sleep

# --------------===================----------------

class Person

  def initialize(name)
    @name = name        # => "bob", "jill", "Ryan", "justin", "jacob", "travis", "kate", "sarah", "sam"
  end

  def get_name
    @name.capitalize  # => "Bob", "Ben", "Jill", "Ryan", "Justin", "Jacob", "Travis", "Kate", "Sarah", "Sam"
  end

  def set_name(new_name)
    @name = new_name      # => "ben"
  end

end

# Classes are Factories (Nouns)
# Their methods are Actions (Verbs)
# Their instance variables are properties (Data or State) - properties of a Class

person1 = Person.new("bob")   # => #<Person:0x007ff95406bcb0 @name="bob">
person2 = Person.new("jill")  # => #<Person:0x007ff95406b918 @name="jill">

person1.get_name         # => "Bob"
person1.set_name("ben")  # => "ben"
person1.get_name         # => "Ben"

person2.get_name  # => "Jill"

student_records = Array.new  # => []

student_records.push(Person.new("Ryan"))    # => [#<Person:0x007ff95406aba8 @name="Ryan">]
student_records.push(Person.new("justin"))  # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">]
student_records.push(Person.new("jacob"))   # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">]
student_records.push(Person.new("travis"))  # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">]
student_records.push(Person.new("kate"))    # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">, #<Person:0x007ff954069eb0 @name="kate">]
student_records.push(Person.new("sarah"))   # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">, #<Person:0x007ff954069eb0 @name="kate">, #<Person:0x007ff9540698e8 @name="sarah">]
student_records.push(Person.new("sam"))     # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">, #<Person:0x007ff954069eb0 @name="kate">, #<Person:0x007ff9540698e8 @name="sarah">, #<Person:0x007ff954069348 @name="sam">]

student_records.each do |student|  # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">, #<Person:0x007ff954069eb0 @name="kate">, #<Person:0x007ff9540698e8 @name="sarah">, #<Person:0x007ff954069348 @name="sam">]
  puts student.get_name            # => nil, nil, nil, nil, nil, nil, nil
end                                # => [#<Person:0x007ff95406aba8 @name="Ryan">, #<Person:0x007ff95406a928 @name="justin">, #<Person:0x007ff95406a658 @name="jacob">, #<Person:0x007ff95406a298 @name="travis">, #<Person:0x007ff954069eb0 @name="kate">, #<Person:0x007ff9540698e8 @name="sarah">, #<Person:0x007ff954069348 @name="sam">]

# >> Ryan
# >> Justin
# >> Jacob
# >> Travis
# >> Kate
# >> Sarah
# >> Sam
