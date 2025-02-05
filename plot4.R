par(mfrow=c(2,2))
plot(new$Global_active_power~new$datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
plot(new$Voltage~new$datetime, type="l", ylab="Voltage", xlab="datetime")
with(new, {
  plot(Sub_metering_1~datetime, type="l", ylab="Energy sub metering", xlab="")
  lines(Sub_metering_2~datetime,col='Red')
  lines(Sub_metering_3~datetime,col='Blue')
})
legend("topright", col=c("black","red","blue"), bty ="n", cex=.55, lty=1, legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(new$Global_reactive_power~new$datetime, type="l", ylab="Global_Reactive_Power", xlab="datetime")
dev.copy(png, "plot41.png", width  = 480, height = 480)
dev.off()
