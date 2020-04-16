# frozen_string_literal: true

class Ring
  def initialize(material, diameter)
    @material = material
    @diameter = diameter
    @size = [15.7, 16.5, 17.3, 18.1, 18.9, 19.8, 20.6, 21.4]
  end

  def find_usa_size
    puts "Your size is: #{@size.find_index(@diameter) + 5}"
  end
end

ring = Ring.new('Gold', 16.5)
ring.find_usa_size

class Watch
  def initialize(color, *elements)
    @color = color
    @elements = elements
  end

  def type_watch
    type = @elements.find_index('ram') || @elements.find_index('digital screen') ? 'digital' : 'classic'
    puts "That's a nice #{@color} #{type} watch."
  end
end

watch = Watch.new('Red')
watch.type_watch

class Vape
  def initialize(atomizer, screen, external_battery: nil)
    @atomizer = atomizer
    @screen = screen
    @external_battery = external_battery
  end

  def recommendation
    atomizer_msg = @atomizer != 'RDA' ? 'Nice!' : 'Try to change to RDA for better flavor'
    screen_msg = @screen == 'digital' ? "That's a nice choice" : 'Always check the batteries'
    external_msg = '.Great, it\'s a good mod.' if @external_battery == true

    puts "Atomizer: #{atomizer_msg}, Screen: #{screen_msg} #{external_msg}"
  end
end

vape = Vape.new('RTA', 'No screen', external_battery: true)
vape.recommendation