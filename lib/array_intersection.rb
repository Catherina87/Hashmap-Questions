def intersection(list1, list2)
  hash = {}

  list1.each do |num|
    hash[num.to_s] = 1
  end

  intersection = []

  list2.each do |num|
    if hash.has_key?(num.to_s)
      intersection << num
    end
  end

  return intersection
end