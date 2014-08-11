
#read 2007-02-01 and 2007-02-02 through cat pipline and redirecting the output to data.txt
head -n 1 ./data/household_power_consumption.txt > data.txt
cat household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> data.txt

#read power consumption
data <- read.table("data.txt", sep = ";", header = T)

with(data, plot(Global_active_power, ylab = "Global Active Power (kilowatts)",type = "l")) ## Create plot on screen device
title(main = "Global Active Power") ## Add a main title



dev.copy(png, file = "plot2.png") ## Copy my plot to a PNG file
dev.off() ## Don't forget to close the PNG device!