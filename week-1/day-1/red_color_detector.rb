def rgb_detector(sample_color)
  pixel_number = 0
  sample_color.each do |pixel|
    pixel.each do |pixel_colors|
      red = pixel_colors[0]
      red_divided = red / 4
      green = pixel_colors[1]
      blue = pixel_colors[2]
      if red > 100 && red_divided > green && red_divided > blue
        pixel_number += 1
      end
    end
  end
  pixel_number
end

sample_color = [[[65, 67, 23], [234, 176, 0], [143, 0, 0]], [[255, 30, 51], [156, 41, 38], [3, 243, 176]],
                [[255, 255, 255], [0, 0, 0], [133, 28, 13]], [[26, 43, 255], [48, 2, 2], [57, 89, 202]]]
puts rgb_detector(sample_color)
