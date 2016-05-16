pollutantmean<-function(directory, pollutant,id=1:332) {
 
 for (index in id) {
 padded_idx <- sprintf("%03d", index)
 fileName <- paste(padded_idx, ".csv", sep="")

 if(!exists("dataset")) {
 dataset <- read.csv( file.path(directory,fileName))
 } else {
 tmp_dataset <- read.csv( file.path(directory,fileName))
 dataset <- rbind(dataset,tmp_dataset)
 }
 }
pollutant_vector<-dataset[pollutant]
 p_v <- pollutant_vector[!is.na(pollutant_vector)]
 sum(p_v)/length(p_v)
 }