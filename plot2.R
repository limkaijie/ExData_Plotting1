rm(list=ls())

data<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

sub<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

sub$Date <- as.Date(sub$Date, format = "%d/%m/%Y")

sub$DateTime <- as.POSIXct(paste(sub$Date, sub$Time))

png("plot2.png", width=480, height= 480)
plot(sub$DateTime, sub$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")
dev.off()