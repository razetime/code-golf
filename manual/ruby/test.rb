hash = {}
while (s = gets)
  outer, *inner = s.scan(/\d* ?\w+ \w+(?= bags?)/)
  hash.store(outer, inner)
end

p hash
# NO BUGS TILL HERE

def helper(clr, amt)
  print clr, amt, hash[clr]
end

helper("shiny gold", 1)
