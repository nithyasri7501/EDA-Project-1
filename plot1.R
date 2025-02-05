hpc<-read.csv("~/R/household_power_consumption.txt", sep=";", na.strings="?")
new<-subset(hpc,  hpc$Date=="1/2/2007" | hpc$Date=="2/2/2007")
hist(new$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.copy(png, "plot1.png", width  = 480, height = 480)
dev.off()