require 'spec_helper'

describe 'Answer' do

  it { should belong_to(:question) }

  let(:answer) {Answer.new(body: "testing body")}

  context '#initialize' do

    it "has a body" do
      let(:answer_noname) {Answer.new}
      expect{ answer_noname.save! }.to raise_error
    end

    it "has a default rating" do
      expect(answer.rating).to eql 0
    end

    it "has a default is chosen of false" do
      expect(answer.is_chosen).to eql false
    end
  end
end
