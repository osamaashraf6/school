# import the class
require_relative '.././baseDecorator'

RSpec.describe BaseDecorator do
  describe "#here I will correct correct the name" do
    let(:nameable) { double("Nameable", correct_name: "John") }
    let(:decorator) { BaseDecorator.new(nameable) }

    it "here I will call the correct_name method of the nameable object d" do
      expect(decorator.correct_name).to eq("John")
      expect(nameable).to have_received(:correct_name)
    end
  end
end
