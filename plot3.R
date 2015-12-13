## Exploratory data analysis course project - plot3

## Read the data
library(data.table)
data2 <- fread("household_power_consumption.txt",na.string="?")

## subset out the required dates 2007-02-01 and 2007-02-02
data <- data2[data2$Date=="1/2/2007"|data2$Date=="2/2/2007"]

## create a date-time variable and format
datetime <- paste (data$Date, data$Time)
datetime <- strptime(datetime,"%d/%m/%Y %H:%M:%S")

## produce the plot and output to png
png(file="plot3.png",width=480,height=480)
plot(datetime,data$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
lines(datetime,data$Sub_metering_2,type="l",col="red")
lines(datetime,data$Sub_metering_3,type="l",col="blue")
## add a legend
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       col=c("black","red","blue"),lty=c(1,1,1))
dev.off()