require 'rspec/autorun'
load 'ideal_gas_law.rb'

describe IdealGasLaw do
  context 'calculate the ideal gas law (chemical_amount * ideal_gas_constant * temperature) / volume)' do
    it 'calculate when chemical_amount = 5, temperature = 500, volume = 2' do
      ideal_gas_law = IdealGasLaw.new
      expect(ideal_gas_law.calculate_pressure(5, 500, 2)).to eq(10392.5)
    end
  end

end