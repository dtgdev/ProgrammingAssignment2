
#read 2007-02-01 and 2007-02-02 through cat pipline and redirecting the output to data.txt
head -n 1 ./data/household_power_consumption.txt > data.txt
cat household_power_consumption.txt  | grep '^0\{0,1\}[12]/0\{0,1\}2/2007' >> data.txt

#read power consumption
data <- read.table("data.txt", sep = ";", header = T)

hist(data$Global_active_power,col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )

