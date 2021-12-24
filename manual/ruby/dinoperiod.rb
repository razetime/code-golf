#Cenozoic 0 - 66
#Quaternary 0 - 3
#Neogene 4 - 23
#Paleogene 24 - 66
#Mesozoic 67 - 252
#Cretaceous 67 - 145
#Jurassic 146 - 201
#Triassic 202 - 252
#Paleozoic 253 - 542
#Permian 253 - 299
#Carboniferous 300 - 359
#Devonian 360 - 419
#Silurian 420 - 444
#Ordovician 445 - 485
#Cambrian 486 - 542
g=gets.chomp.to_i

f=->a{a<31?"Cenozoic/"+(a<4?"Quaternary":(a<24?"Neogene":(a<67?"Paleogene":""))):a<253?"Mesozoic/"+(a<146?"Cretaceous":(a<202?"Jurassic":(a<253?"Triassic":""))):a<543?"Paleozoic/"+(a<300===a ?"Permian":(a<360 ?"Carboniferous":(a<420?"Devonian":(a<445===a ?"Silurian":(a<486 ?"Ordovician": (a<543?"Cambrian":"")))))):""}
 
p f[g]
