loadDataset<-function(){
  dataset <- read.table("household_power_consumption.txt",
                   header = TRUE,
                   sep=";",
                   colClasses = c("character", "character", rep("numeric",7)),
                   na.strings = "?")
  dataset$Time = strptime(paste(dataset$Date, dataset$Time), "%d/%m/%Y %H:%M:%S")
  dataset$Date = as.Date(dataset$Date, "%d/%m/%Y") 
  subset(dataset, Date %in% as.Date(c("2007-02-01", "2007-02-02")),na.rm=TRUE)
}
