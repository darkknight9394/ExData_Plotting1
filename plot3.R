source("processData.R")
data<-processData()

#setup device
png(filename = "plot3.png", width = 480, height = 480, units = "px")
    
q3_1<-plot(data$DateTime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
q3_2<-lines(data$DateTime, data$Sub_metering_2, col="red")
q3_3<-lines(data$DateTime, data$Sub_metering_3, col="blue")

legend("topright", lty=1, lwd=1, col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
