# Count to 100 in Danish
# incomplete

library(english)
tens = c(paste(words(1:9),"and"))
cat(words(1:19),paste(tens,"twenty"),"thirty",paste(tens,"thirty"),"forty",paste(tens,"forty"),sep="\n")
paste(tens,words(3:4))
paste(tens,paste("half",c("third","fourth","fifth")))