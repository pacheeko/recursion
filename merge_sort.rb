def merge_sort(array)
  return array if array.length == 1
  a = array[0,array.length/2]
  b = array[array.length/2,array.length]
  a_sort = merge_sort(a)
  b_sort = merge_sort(b)
  merge(a_sort,b_sort)
end

def merge(a,b)
  result = []
  until a.empty? || b.empty?
    if a[0] <= b[0]
      result << a[0]
      a.shift
    else
      result << b[0]
      b.shift
    end
  end
  if a.empty?
  	b.each do |item|
  	  result << item
  	end
  else
  	a.each do |item|
  	  result << item
  	end
  end
  return result
end

print merge_sort([4,6,2,1])