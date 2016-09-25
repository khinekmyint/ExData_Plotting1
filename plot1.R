source("loaddataset.R")
dataset<-loadDataset()
par(mar=c(4,4,2,1))
hist(dataset$"Global_active_power",main="Global Active Power",
     col="red",xlab="Global Active Power(kilowatts)",ylab="frequency")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
