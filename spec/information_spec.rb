require 'Information'

RSpec.describe Information do
  subject(:information) { described_class.new('14/01/2012', 1000, 400) }

    context "#initialize" do
      it "shows hash table of the customer's transaction" do
        hash = {:date=>"14/01/2012", :credit=>1000, :debit=>400}
        expect(subject.transaction).to eq(hash)
      end
    end
end
