 source("processData.R")
 data<-processData()

 #setup device 
 png(filename = "plot1.png", width = 480, height = 480, units = "px")
 
 q1<-hist(data$Global_active_power,col=2, xlab = "Global Active Power (kilowatts)",main="Global Active Power")
 # Copy my plot from screen device to a PNG file
 #dev.copy(png, file ="plot1.png")
 dev.off()
