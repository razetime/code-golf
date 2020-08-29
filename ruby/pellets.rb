a=[4,2,1,0] # space length to create circle

str=gets.chomp;
l = str.length;
# print first line of pellets
print " "*6
if l<=9 then puts "0" else puts "0"*(l-8) end
    
# initial pattern
for n in a do 
    print " "*n +"0"+" "*(5-n)
    print " " if l<=9
    print " "*(l-8) if l>9
    puts " "*(5-n) +"0"

end
    
# display string with spaces
if l<9 then puts "0"+" "*((11-l)/2).floor + str + " "*((12-l)/2).ceil + "0" else puts "0 #{str} 0" end

#initial pattern but reversed
for n in a.reverse do 
    print " "*n +"0"+" "*(5-n)
    print " " if l<=9
    print " "*(l-8) if l>9
    puts " "*(5-n) +"0"
end
    
# last line(same as first line)
print " "*6
if l<=9 then puts "0" else puts "0"*(l-8) end
