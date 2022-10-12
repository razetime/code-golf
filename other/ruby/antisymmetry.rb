#A=$<.read.split('\n').map{|n|n.split(' ')}.map{|r|r.map(&:to_i)}
#
#p A==A.transpose.map{|r|r.map{|c|-c}}
f=->a{a==a.transpose.map{|r|r.map{|c|-c}}}
p f[[[1,1,1],[1,1,1],[1,1,1]]]
# "1 1 1\n1 1 1\n1 1 1"