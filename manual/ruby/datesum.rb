require 'date'
f=->a,b{ ->c{c.split(?,).map{|n|Date.parse(n)}.sort}[b]}
p f[1,"1975/03/05,1978/07/23,2008/11/12,2012/12/20"]