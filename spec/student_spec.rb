require_relative '../student'

describe Student do
  context 'When providing student information' do
    student = Student.new(age:20, name: 'Taro')

    it 'Creates a new student with an age of 20 and a name of Taro' do
      expect(student).to be_an_instance_of Student
    end

    it 'the student can have permission to use services' do
      expect(student.can_use_services?).to eq true
    end
  end
end