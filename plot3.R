source("loaddataset.R")
dataset<-loadDataset()
plot(dataset$Time, dataset$Sub_metering_1,type = "l", xlab = "",  ylab = "Energy sub metering")
lines(dataset$Time,dataset$Sub_metering_2,col="red")
lines(dataset$Time,dataset$Sub_metering_3,col="blue")
legend("topright", col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = 1)
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
