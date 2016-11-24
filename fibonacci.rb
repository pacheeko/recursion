def fibs(n)
  result = []
  n.times do |num|
  	if num == 0
  	  result << 0
  	elsif num == 1
  	  result << 1
  	else
  	  result << (result[num-1] + result[num-2])
  	end
  end
  result
end

def fibs_rec(n, result=[0,1])
  return result[0] if n == 1
  return result if result.size == n
  fibs_rec(n,result << result[-2] + result[-1]) if n > 2
end
  

  

