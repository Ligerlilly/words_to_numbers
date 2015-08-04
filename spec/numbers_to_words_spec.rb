require 'rspec'
require 'numbers_to_words'
require 'pry'

describe Fixnum do
  it "translates one digit numbers into written form" do
    expect(1.to_words()).to eq("one")
  end

  it "translates two digit numbers into written form" do
    expect(25.to_words).to eq("twenty five")
  end

  it 'translates three digit numbers' do
    expect(384.to_words).to eq('three hundred eighty four')
  end

  it 'translates four digit numbers' do
    expect(2384.to_words).to eq('two thousand three hundred eighty four')
  end

  it 'translates 1000 to words' do
    expect(1000.to_words).to eq("one thousand")
  end

  it 'translates 1001 to words' do
    expect(1001.to_words).to eq("one thousand one")
  end

  it 'translates 1010 to words' do
    expect(1010.to_words).to eq("one thousand ten")
  end

  it 'translates 12000 to words' do
    expect(12000.to_words).to eq("twelve thousand")
  end

  it 'translates 12001 to words' do
    expect(12001.to_words).to eq('twelve thousand one')
  end

  it 'translates 12001 to words' do
    expect(12384.to_words).to eq('twelve thousand three hundred eighty four')
  end

  it 'translates 30000 to words' do
    expect(30000.to_words).to eq('thirty thousand')
  end

  it 'translates 30001 to words' do
    expect(30001.to_words).to eq('thirty thousand one')
  end

  it 'translates 36345 to words' do
    expect(36345.to_words).to eq('thirty six thousand three hundred fourty five')
  end




end
