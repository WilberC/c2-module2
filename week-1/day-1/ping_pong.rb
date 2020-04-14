def pingpong element
  ping_pong_val = 0
  constant_sum_down = 1
  (1..element).each do |index|
    if (((index - 1) % 7).zero? && index != 1) || (index - 1).to_s.include?('7')
      constant_sum_down *= -1
    end
    ping_pong_val += constant_sum_down
      # puts "#{index} - #{ping_pong_val}"
  end
  ping_pong_val
end

def test
  rptas = [[7, 7], [8, 6], [15, 1], [21, -1], [22, 0], [30, 6], [68, 2], [69, 1], [70, 0], [71, 1], [72, 0], [100, 2]]
  rptas.each do |rpt|
    result_ping_pong = pingpong rpt[0]
    if result_ping_pong == rpt[1]
      puts "Correct at index #{result_ping_pong}"
    else
      puts "Expected result at index #{rpt[0]} is | #{rpt[1]} but gets #{result_ping_pong} |"
    end
  end
end

test
