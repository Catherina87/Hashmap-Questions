
def palindrome_permutation?(string)
  hash = {}
  string.length.times do |i|
    if !hash.has_key?(string[i])
      hash[string[i]] = 1
    else
      hash[string[i]] += 1
    end
  end

  result = hash.select { |key, value| value.odd? }

  if result.length > 1
    return false
  else
    return true
  end
end