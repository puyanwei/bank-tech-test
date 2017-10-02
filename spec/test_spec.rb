require 'bank'

Rspec.describe Bank do
  subject(:bank) {described_class.new}

  describe do
    context 'this is a test to see that rspec is setup' do
      expect(bank).toEql()
    end
  end

end
