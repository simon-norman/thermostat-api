require './lib/temperature.rb'

describe 'temperature' do
  it 'should create temperature record' do
    Temperature.create({ temperature: 20 })
    expect(Temperature.all.count).to eq(1)
  end
end
