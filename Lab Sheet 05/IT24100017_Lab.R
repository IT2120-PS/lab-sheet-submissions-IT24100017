setwd("C:\\Users\\it24100017\\Desktop\\IT24100017_Lab05")
Delivery_Time <- read.table("Exercise - Lab 05.txt", header = TRUE)

head(Delivery_Time)

histogram <- hist(Delivery_Time$Delivery_Time_.minutes.,
                  main = "Histogram for Delivery Times",
                  breaks = seq(20, 70, length = 10),
                  right = FALSE)

str(Delivery_Time)

colnames(Delivery_Time)

breaks <- round(histogram$breaks)

freq <- histogram$counts

mids <- histogram$mids

classes <- c()

for(i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cbind(classes = classes, frequency=freq, Midpoint=mids)

cum_freq <- cumsum(freq)

(breaks[-1])

plot(breaks[-1], cum_freq,
     type = "o", pch = 16, col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time", ylab = "Cumulative Frequency")
