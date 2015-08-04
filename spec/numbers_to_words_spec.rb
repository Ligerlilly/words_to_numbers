require 'rspec'
require 'numbers_to_words'
require 'pry'

describe Fixnum do
  it "translates one digit numbers into written form" do
    expect(1.to_w()).to eq("one")
  end

  it "translates two didgit numbers into written form" do
    expect(25.to_w).to eq("twenty five")
  end

  it 'translates three digit numbers' do
    expect(384.to_w).to eq('three hundred eighty four')
  end

end
