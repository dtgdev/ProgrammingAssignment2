

par(mfrow = c(2, 2))
with(data,{
  plot(DateTime,Global_active_power, ylab = "Global active power", xlab = "", type = "l")
  plot(DateTime,Voltage, ylab = "Voltage", xlab = "datetime", type = "l")
  plot(DateTime,Sub_metering_1, ylab = "Energy sub metering", xlab = "Date Time", type = "l")
  points(DateTime,Sub_metering_2, ylab = "Energy sub metering", xlab = "Date Time", type = "l",col = "red")
  points(DateTime,Sub_metering_3, ylab = "Energy sub metering", xlab = "Date Time", type = "l",col = "blue")
  legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_meeting_1", "Sub_meeting_2","Sub_meeting_3"))
  plot(DateTime,Global_reactive_power, ylab = "Global active power", xlab = "Date Time", type = "l")
  
  mtext("PLOT 4", outer = TRUE)
  
} )

dev.copy(png, file = "plot4.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!
