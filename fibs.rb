def fibs(num)
  array = []
  num.times do |i|
    next(array << i) if i.between?(0, 1)

    array << array[i - 1] + array[i - 2]
  end
  array
end

def fibs_rec(num)
  if num == 0
    return [num]
  elsif num == 1
    return [0, 1]
  end

  array = fibs_rec(num - 1)
  array << array[-1] + array[-2]
end

puts fibs_rec(8)