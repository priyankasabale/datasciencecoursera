corr<-function(directory,threshold=0) {
corset = data.frame(NULL)
for(idx in 1:332) {
padded_idx <- sprintf("%03d", idx)
fileName <- paste(padded_idx, ".csv", sep="")


data1 <- complete(directory,idx)


dataset <- read.csv( file.path(directory,fileName)) 
dataset <- na.omit(dataset)

if( data1[2] > threshold) {
corset <- c(rbind(corset, cor(dataset[,2],dataset[,3])))
} 
}
corset
}