f=->c,d{(c..d).to_a.map(&:to_s).map{|e| e.count("1")}.inject(:+)}
p f[1,100]
#print *(1..100)