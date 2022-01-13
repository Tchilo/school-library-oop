require_relative '../corrector'

describe Corrector do
  context 'When passin a name' do
    corrector= Corrector.new
    it 'Should return first letter of name in uppercase' do
      expect(corrector.correct_name('taro')).to eq 'Taro'
    end

    it 'should return first 10 letter with first capital lerrer' do
      expect(corrector.correct_name('Venomsin')).to eq 'Venomsin'
    end
  end
end