## Exploratory data analysis course project - plot2

## Read the data
library(data.table)
data2 <- fread("household_power_consumption.txt",na.string="?")

## subset out the required dates 2007-02-01 and 2007-02-02
data <- data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007"]

## create a date-time variable and format
datetime <- paste (data$Date, data$Time)
datetime <- strptime(datetime,"%d/%m/%Y %H:%M:%S")

## produce the plot and output to png
png(file="plot2.png",width=480,height=480)
plot(datetime,data$Global_active_power,ylab="Global Active Power (kilowatts)",
     type="l",xlab="")
dev.off()