require_relative('./person')
require_relative('./student')
require_relative('./teacher')

class PersonStorage
  def initialize
    @person_array = []
  end

  def create_person
    puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    person_option = Integer(gets.chomp)

    case person_option
    when 1
      print 'Age: '
      user_age = Integer(gets.chomp)

      print 'Name: '
      user_name = gets.chomp

      print 'Has parent permission? [Y/N]: '
      user_permission = gets.chomp.to_s.upcase

      case user_permission
      when 'Y'
        user_permission = true
      when 'N'
        user_permission = false
      end
      student = Student.new(user_age, user_name, parent_permission: user_permission)
      @person_array.push({
                           output: "[Student] Name: #{student.name}, ID: #{student.id}, Age: #{student.age}",
                           object: student
                         })

      puts 'Person created successfully!'
      puts "\n"

    when 2
      print 'Age: '
      user_age = Integer(gets.chomp)

      print 'Name: '
      user_name = gets.chomp

      print 'Specialization: '
      user_specialization = gets.chomp

      teacher = Teacher.new(user_age, user_name, user_specialization)
      @person_array.push({
                           output: "[Teacher] Name: #{teacher.name}, ID: #{teacher.id}, Age: #{teacher.age}",
                           object: teacher
                         })

      puts 'Person created successfully!'
      puts "\n"

    else
      puts 'Person not created.'
    end
  end

  def people_list
    @person_array.each do |person|
      puts person[:output]
      puts "\n"
    end
  end
end
