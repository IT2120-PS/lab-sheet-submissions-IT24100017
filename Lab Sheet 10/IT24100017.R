

setwd("C:\\Users\\isank\\OneDrive\\Desktop\\IT24100017")
observe <- c(120,95,85,100)
prob <- c(.25, .25, .25, .25)

chisq.test(observe)
chisq.test(observe, p = prob)


