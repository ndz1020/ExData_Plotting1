# Loading Dataset
dataset <- "./dataset/household_power_consumption.txt"
data <- read.table(dataset, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting Dataset
dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Working with Data Subset
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataSubset$Global_active_power)

# Creating plot2.png
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()