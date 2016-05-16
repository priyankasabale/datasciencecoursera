complete<-function(directory, id=1:332) {
df <- data.frame(NULL)
for(idx in id) {
padded_idx <- sprintf("%03d", idx)
fileName <- paste(padded_idx, ".csv", sep="")

dataset <- read.csv( file.path(directory,fileName))
#sum<- nrow(dataset[rowSums(is.na(dataset)) ==0,])

dataset <- na.omit(dataset)
df <- rbind(df, c(idx, nrow(dataset)))
}
names(df) <- c("idx","nobs")
df
}
