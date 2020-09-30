cpl_data<-read.table( "household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?",colClasses = c("character","character","numeric"))
cpl_data$Date<-as.Date(cpl_data$Date,"%d/%m/%Y")
data<-cpl_data[cpl_data$Date =="2007-02-01"|cpl_data$Date =="2007-02-02", ]
data<-cbind(data,weekday=weekdays.Date(data$Date,abbreviate = TRUE))
data$datetime<- paste(data$Date,data$Time)
data$datetime<-as.POSIXct(data$datetime)
quartz()
plot(data$datetime,data$Global_active_power,type="l",ylab = "Global Active Power(kilowatts)",xlab = "")
dev.copy(png,file="plot2.png")
dev.off()

