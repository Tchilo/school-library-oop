require_relative ('../classroom')
require_relative ('../student')

describe Classroom do
  context 'It should create book and add rentals' do
    classroom = Classroom.new('PostGate')
    student = Student.new(age:22, classroom: nil, name: 'Luke', parent_permission: true)
    it 'Should create a classroom' do
      expect(classroom.label).to eq 'PostGate'
    end
  end
end