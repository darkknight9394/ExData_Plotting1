source("processData.R")
data<-processData()

png(filename = "plot2.png", width = 480, height = 480, units = "px")

q2<-plot(data$DateTime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
