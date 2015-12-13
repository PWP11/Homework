## Exploratory data analysis course project - plot1

## Read the data
library(data.table)
data2 <- fread("household_power_consumption.txt",na.string="?")

## subset out the required dates 2007-02-01 and 2007-02-02
data <- data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007"]

## produce the histogram and output to png
png(file="plot1.png",width=480,height=480)
hist(data$Global_active_power,xlab="Global Active Power (kilowatts)",
     main="Global Active Power",col="red")
dev.off()

