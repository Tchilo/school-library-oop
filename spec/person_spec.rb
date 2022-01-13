require_relative '../person'

describe Person do
  context 'When creating a person' do
    
    person = Person.new(age:30, parent_permission: false, name: 'Jack')
    it 'Creates a new person with name Jack' do
      expect(person).to be_an_instance_of Person
    end

    it 'Age of new pwerson to equal 30' do
      expect(person.age).to eq 30
    end
  end
end