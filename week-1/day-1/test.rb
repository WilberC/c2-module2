require 'rspec/autorun'
load 'ideal_gas_law.rb'

describe IdealGasLaw do
  context 'calculate the ideal gas law (chemical_amount * ideal_gas_constant * temperature) / volume)' do
    it 'calculate when chemical_amount = 5, temperature = 500, volume = 2' do
      ideal_gas_law = IdealGasLaw.new
      expect(ideal_gas_law.calculate_pressure(5, 500, 2)).to eq(10392.5)
      expect(ideal_gas_law.calculate_pressure(1, 780, 4)).to eq(1621.23)
      expect(ideal_gas_law.calculate_pressure(2, 345, 9)).to eq(637.41)
      expect(ideal_gas_law.calculate_pressure(21, 13, 56)).to eq(40.53)
      expect(ideal_gas_law.calculate_pressure(123, 900, 2)).to eq(460179.9)
    end
  end

end