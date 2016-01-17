plot_data <- read.table("household_power_consumption.txt",header=T,sep=";")

plot_data[plot1_data == "?"] <- NA

plot_data$Date <- as.Date(strptime(plot1_data$Date,"%d/%m/%Y"))

plot_data <- subset(plot1_data,c(Date >= "2007-02-01",Date <= "2007-02-02"))

plot1_data$Global_active_power <- as.numeric(plot1_data$Global_active_power)

par(mfrow=c(1,1),oma=c(2,2,1,1))

hist(
  plot1_data$Global_active_power/1000
  ,col="red"
  ,main="Global Active Power"
  ,xlab="Global Active Power (kilowatts)"
  ,xlim=c(0,6)
  ,ylab="Frequency"
  )
dev.copy(png,"plot1.png",width=480,height=480)
dev.off()