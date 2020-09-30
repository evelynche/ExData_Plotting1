cpl_data<-read.table( "household_power_consumption.txt",sep = ";",header = TRUE,na.strings = "?",colClasses = c("character","character","numeric"))
cpl_data$Date<-as.Date(cpl_data$Date,"%d/%m/%Y")
data<-cpl_data[cpl_data$Date =="2007-02-01"|cpl_data$Date =="2007-02-02", ]
par(mar=c(6,6,6,6))
hist(data$Global_active_power,col = "red",xlab = "Global Active Power(kilowatts)",main="Global Active Power")
dev.copy(png,file="plot1.png")
dev.off()
