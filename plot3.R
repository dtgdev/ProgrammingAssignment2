
#read 2007-02-01 and 2007-02-02 through cat pipline and redirecting the output to data.txt
#head -n 1 ./data/household_power_consumption.txt > data.txt
#cat household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> data.txt

#read power consumption
data <- read.table("data.txt", sep = ";", header = T)
time <- paste(data$Date, data$Time)
data$DateTime <- strptime(time, "%d/%m/%Y %H:%M:%S")
head(data, 3)

with(data, plot(DateTime,Sub_metering_1, ylab = "Energy sub metering", type = "l")) ## Create plot on screen device
with(data,points(DateTime,Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red"))
with(data,points(DateTime,Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue"))
legend("topright",col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1)



dev.copy(png, file = "plot3.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!