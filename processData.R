# This script preprocess the data. 
# Note: To only read partial data to save memory do the following in linux command line
# grep '^[1|2]\/2\/2007' household_power_consumption.txt > dataFile.txt

processData <- function()
{
# To only read partial data to save memory do the following in linux command line
# grep '^[1|2]\/2\/2007' household_power_consumption.txt > dataFile.txt
    
# Read data
data<-read.table("dataFile.txt",sep=";")

# assign column names.
colnames(data)<-c(list("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
extraColumn <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data<-cbind(data,extraColumn)

#assign column name to DateTime data for extraColumn
colnames(data)[10]<-"DateTime"

data
}