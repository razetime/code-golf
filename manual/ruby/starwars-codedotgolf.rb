$*.map{|g|l,*u=g.lines
l,w=l.split.map &:to_i
i=0
u.map{|c|c=c.strip.split
loop{a=l-i/2
b=w+i/2*2
s=[*0...c.size].reverse.map{|x|c[0..x]}.find{|j|(j*" ").size<=b}
if !c[s.size]
puts" "*a+c*" "
i+=1
break
else
r=0
while(s*"").size<b
s[r]+=" "
r=-~r%(t=s.size-1)end
c.shift t+1
puts" "*a+s*""end
i+=1}
puts
i+=1}}
