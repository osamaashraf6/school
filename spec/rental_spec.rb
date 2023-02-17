require_relative '.././rental'

RSpec.describe Rental do
  describe "this is the first initialize" do
    it "here give  the date" do
      rental = Rental.new("2002-08-17")
      expect(rental.date).to eq("2002-08-17")
    end
  end

  describe "ther date" do
    it " this is able to build and be taken" do
      rental = Rental.new("2002-08-17")
      rental.date = "2023-02-18"
      expect(rental.date).to eq("2023-02-18")
    end
  end
end
