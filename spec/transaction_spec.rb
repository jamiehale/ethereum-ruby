module Ethereum
  describe Transaction do
    before(:each) do
      @t = Transaction.new(1, 2, 3, 4)
    end
    it 'can be created without parameters' do
      Transaction.new(1, 2, 3)
    end
    it 'can be created with parameters' do
      Transaction.new(1, 2, 3, 4)
    end
    it 'has a readable id' do
      expect{@t.id}.not_to raise_error
    end
    it 'sets the id from the constructor' do
      expect(@t.id).to eq(1)
    end
    it 'has a writable id' do
      expect{@t.id = 9}.not_to raise_error
    end
    it 'has a readable mined flag' do
      expect{@t.mined}.not_to raise_error
    end
    it 'defaults to false for the mined flag' do
      expect(@t.mined).to be false
    end
    it 'has a writable mined flag' do
      expect{@t.mined = true}.not_to raise_error
    end
    it 'has a readable connection' do
      expect{@t.connection}.not_to raise_error
    end
    it 'sets the connection from the constructor' do
      expect(@t.connection).to eq(2)
    end
    it 'has a writable connection' do
      expect{@t.connection = 9}.not_to raise_error
    end
    it 'has a readable input' do
      expect{@t.input}.not_to raise_error
    end
    it 'sets the input from the constructor' do
      expect(@t.input).to eq(3)
    end
    it 'has a writable input' do
      expect{@t.input = 9}.not_to raise_error
    end
    it 'has a readable input_parameters' do
      expect{@t.input_parameters}.not_to raise_error
    end
    it 'sets the input_parameters from the constructor' do
      expect(@t.input_parameters).to eq(4)
    end
    it 'has a writable input_parameters' do
      expect{@t.input_parameters = 9}.not_to raise_error
    end
    it 'defaults to an empty list for input_parameters' do
      expect(Transaction.new(1, 2, 3).input_parameters).to eq([])
    end
  end
end

