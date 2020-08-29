f=->a{[*1..a.length-1].map{|n|("%0#{a.length}b"%2**n).reverse.split(//).map(&:to_i)}.push(a)}
p f[[1,2,3,4,5]]