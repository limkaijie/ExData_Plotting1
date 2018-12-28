
rm(list=ls())

elc<- read.table("household_power_consumption.txt", sep=";",nrows= 2075260, header=TRUE, quote= "", strip.white=TRUE, stringsAsFactors = FALSE, na.strings= "?")

sub<- subset(elc, (elc$Date == "1/2/2007" | elc$Date== "2/2/2007")) 

png("plot1.png", width=480, height= 480)
hist(sub$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")
dev.off()