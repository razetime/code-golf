A = gets.chomp.split('/')
numArr= []
#denArr = []


# separate the digits of each number
for str in A do
    occ = []
    for i in 0..str.length-1 do
        occ.push(str[0..i])
    end
    for i in 1..str.length-1 do
        occ.push(str[i..-1])
    end
    numArr.push(occ)
end
#for str in A do
#    
#    for i in 1..str.length-1 do
#        denArr.push(str[i..-1])
#    end
#    denArr.push('/')
#end

# 

fracArr = []
for  in numArr do
    p a
#    p b
#    for i in a.length/2-1..a.length-1 do
#        for j in 0..b.length/2+1 do
##            fracArr.push("#{a[i]}"+'/'+"#{b[j]}")
##            p b[j]
#        end
#    end
end
#p fracArr
p A
p numArr
#p denArr

