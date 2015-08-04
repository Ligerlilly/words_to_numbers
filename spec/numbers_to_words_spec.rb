require 'rspec'
require 'numbers_to_words'
require 'pry'

describe Fixnum do
  it "translates one digit numbers into written form" do
    expect(1.to_words()).to eq("one")
  end

  it "translates two didgit numbers into written form" do
    expect(25.to_words).to eq("twenty five")
  end

  it 'translates three digit numbers' do
    expect(384.to_words).to eq('three hundred eighty four')
  end
  it 'translates four digit numbers' do
    expect(2384.to_words).to eq('two thousand three hundred eighty four')
  end

end
