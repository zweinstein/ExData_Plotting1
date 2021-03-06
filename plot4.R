rm(list=ls()) # To clear global environment

# Download and unzip the dataset
if(!file.exists("household_power_consumption.txt")) {
  fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(fileUrl, "exdata-data-household_power_consumption.zip", method="curl")
  unzip("./exdata-data-household_power_consumption.zip")
}

library("sqldf") # Load sqldf library to filter the data to read only the required data for this analysis
data <- read.csv2.sql("household_power_consumption.txt", 
                      sql = "select * from file where Date = '1/2/2007' OR Date = '2/2/2007' ")
data$datetime <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S") # new column containing both date & time

png("plot4.png",480,480)
par(bg="transparent", mfrow=c(2,2)) # Transparent background color; 2 by 2 panels for 4 figures

with(data, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

with(data, plot(datetime, Voltage, type="l", ylab="Voltage"))

with(data, plot(datetime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
with(data, lines(datetime, Sub_metering_2, type="l", col="red"))
with(data, lines(datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col=c("black","red","blue"), bg="transparent",
       legend=names(data)[7:9], box.lwd=0)

with(data, plot(datetime, Global_reactive_power, type="l", xlab="datetime"))

dev.off()


