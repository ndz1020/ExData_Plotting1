# Loading Dataset
dataset <- "./dataset/household_power_consumption.txt"
data <- read.table(dataset, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Subsetting Dataset
dataSubset <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Working with Data Subset
datetime <- strptime(paste(dataSubset$Date, dataSubset$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(dataSubset$Global_active_power)

# Creating plot1.png
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()