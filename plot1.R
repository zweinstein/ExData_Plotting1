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

png("plot1.png",480,480)
par(bg="transparent") # Transparent background color, exactly as the reference plot provided
hist(data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()


