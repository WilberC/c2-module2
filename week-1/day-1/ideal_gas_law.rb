# def calculate_pressure(chemical_amount, temperature, volume)
#   ideal_gas_constant = 8.314
#   (chemical_amount * ideal_gas_constant * temperature) / volume
# end

# puts calculate_pressure(5, 500, 2)
class IdealGasLaw
  def calculate_pressure(chemical_amount, temperature, volume)
    ideal_gas_constant = 8.314
    (chemical_amount * ideal_gas_constant * temperature) / volume
  end
end
