# Your Code Here
def map(s)
  new_array = []
  i = 0
  while i < s.length
    new_array << (yield(s[i]))
    i += 1
  end
  new_array
end

def reduce(s, sp=nil)
  if sp
    accum = sp
    i = 0
  else
    accum = s[0]
    i = 1
  end
  while i < s.length
    accum = yield(accum, s[i])
    i += 1
  end
  accum
end


