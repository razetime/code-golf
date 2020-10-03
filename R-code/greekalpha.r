# Print the uppercase if no args,
# Lowercase if given args
# https://codegolf.stackexchange.com/questions/97049/print-the-greek-alphabet

e=function(x){intToUtf8(913:937+32*!missing(x))}
cat(ifelse(length(commandArgs(T))==0,e(),e(1)))