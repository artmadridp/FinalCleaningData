## Installs necessary libraries to run script
library(LaF) ##LaF allows easy reading of large files, including fixed width files
library(plyr) ##plyr in this case will allow us to implement the split-apply-combine pattern in R
## Reads all necessary data from relevant files
Xtest<-laf_open_fwf("./DataDownload/UCI HAR Dataset/test/X_test.txt", column_types = c(rep("numeric",561)), column_widths = c(rep.int(16,561)))
Xtestdata<-next_block(Xtest)
Xtrain<-laf_open_fwf("./DataDownload/UCI HAR Dataset/train/X_train.txt", column_types = c(rep("numeric",561)), column_widths = c(rep.int(16,561)))
Xtraindata<-next_block(Xtrain,nrows = 15000)
trainact<-read.delim("./DataDownload/UCI HAR Dataset/train/y_train.txt", header = F, sep = " ")
testact<-read.delim("./DataDownload/UCI HAR Dataset/test/y_test.txt", header = F, sep = " ")
trainsub<-read.delim("./DataDownload/UCI HAR Dataset/train/subject_train.txt", header = F, sep = " ")
testsub<-read.delim("./DataDownload/UCI HAR Dataset/test/subject_test.txt", header = F, sep = " ")
headers<-read.delim("./DataDownload/UCI HAR Dataset/features.txt", header = F)
actnum<-rbind(trainact,testact) ## Binds train and test datasets in the activity number file
## Creates a label for activity data
for (i in 1:nrow(actnum)) {
      if (actnum[i,1] == 1) {actnum[i,2]<-"Walking"}
      else if (actnum[i,1] == 2) {actnum[i,2] <- "Walking upstairs"}
      else if (actnum[i,1] == 3) {actnum[i,2] <- "Walking downstairs"}
      else if (actnum[i,1] == 4) {actnum[i,2] <- "Sitting"}
      else if (actnum[i,1] == 5) {actnum[i,2] <- "Standing"}
      else if (actnum[i,1] == 6) {actnum[i,2] <- "Laying"} 
}
## Binds all other relevant data, creating one dataset with all variables
subj<-rbind(trainsub,testsub)
subact<-cbind(subj,actnum)
Xdata<-rbind(Xtraindata,Xtestdata)
fulldata<-cbind(subact,Xdata)
## Adds headers
headers$V1<-as.character(headers$V1)
headers<-rbind("Activity",headers)
headers<-rbind("Activity Number",headers)
headers<-rbind("Subject",headers)
colnames(fulldata)<-headers$V1
## Identifies columns that include mean and standard deviation data, and extracts those columns
meancols<- grep("-mean\\(\\)",headers$V1)
stdcols<-grep("-std\\(\\)",headers$V1)
keepcols<-sort.int(c(1,3,meancols,stdcols))
selection<-fulldata[,keepcols]
## Labels the data set with descriptive variable names, in accordance with the lessons from lesson 1, week 4
newnames<-tolower(names(selection))
newnames = strsplit(newnames," ")
secondElement<-function(x){x[2]}
newnames<-sapply(newnames,secondElement)
newnames<-sub("()","",newnames)
newnames<-sub("\\(\\)","",newnames)
newnames<-sub("^t","time",newnames)
newnames<-sub("^f","frequency",newnames)
newnames<-sub("acc","acceleration",newnames)
newnames<-sub("std","standarddeviation",newnames)
newnames<-sub("mag","magnitude",newnames)
newnames[1]<-"Subject"
newnames[2]<-"Activity"
newnames<-gsub("-","",newnames)
names(selection)<-newnames
## Creates new data set which includes only the means of variables for all subject/activity combinations
tidyset<-ddply(selection,.(Subject,Activity),numcolwise(mean))
## Writes .txt file from new data set
write.table(selection,file = "tidydata.txt", row.names = F)

