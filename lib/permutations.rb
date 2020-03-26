def permutations?(string1, string2)
  if string1 == "" && string2 == ""
    return true
  end

  hash = {}

  string1.length.times do |i|
    if !hash.has_key?(string1[i])
      hash[string1[i]] = 1
    else
      hash[string1[i]] += 1
    end
  end

  string2.length.times do |i|
    if hash[string2[i]] == 0 || !hash.has_key?(string2[i])
      return false
    else
      hash[string2[i]] -= 1
    end
  end

  result = hash.select { |key, value| value > 0 }

  if result.length > 0
    return false
  else
    return true
  end
end