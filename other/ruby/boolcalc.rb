f=->a{eval(a.gsub(/[A-Z]{3}/,{"NOT"=>?!,"AND"=>?&,"OR"=>?|,"XOR"=>?^}).gsub(/!/))}
p f["NOT1AND1"]
