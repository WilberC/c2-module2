class String
  def vowel?
    return false if length > 1 || length.zero?

    downcase.scan(/[aeiou]/).empty? ? false : true
  end
end
