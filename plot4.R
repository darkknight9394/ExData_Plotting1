source("processData.R")
data<-processData()
png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))

#top left
top_left<-plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

#top right
top_right<-plot(data$DateTime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

#bottom left
bottom_left_1<-plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
bottom_left_2<-lines(data$DateTime, data$Sub_metering_2, col="red")
bottom_left_3<-lines(data$DateTime, data$Sub_metering_3, col="blue")
legend("topright", lty=1, lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#bottom right
bottom_right<-plot(data$DateTime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
