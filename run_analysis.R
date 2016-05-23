library(reshape2)

## Load 6 activity labels into R
activityLabels = read.table("activity_labels.txt")

## Load 561 features into R
features = read.table("features.txt")

## Convert the factor feature into charaters, be prepared to grep the mean and std
features[,2] = as.character(features[,2])

## Take the mean and standard deviation for each measurement, int[]
featuresWanted <- grep(".*mean.*|.*std.*", features[,2])

## Find out the mean, std related names, chr[]
featuresWanted.names <- features[featuresWanted,2]

## Remove "-" and etc.
featuresWanted.names = gsub('-mean', 'mean', featuresWanted.names)
featuresWanted.names = gsub('-std', 'std', featuresWanted.names)
featuresWanted.names <- gsub('[-()]', '', featuresWanted.names)

## Read the group "test" data
testActivity = read.table("test/y_test.txt")
testSubject = read.table("test/subject_test.txt")
test = read.table("test/X_test.txt")
test_sub = test[featuresWanted]
test_sub = cbind(testSubject, testActivity, test_sub)

## Read the group "train" data
train = read.table("train/X_train.txt")
trainActivity = read.table("train/y_train.txt")
trainSubjects = read.table("train/subject_train.txt")
train_sub = train[featuresWanted]
train_sub = cbind(trainSubjects, trainActivity, train_sub)

## combine
merged = rbind(train_sub, test_sub)
colnames(merged) <- c("subject", "activity", featuresWanted.names)
merged$activity <- factor(merged$activity, levels = activityLabels[,1], labels = activityLabels[,2])

## reshape - melt
res = melt(merged, id=c("subject", "activity"), value.name = "value")
names(res)[3] = "feature"

## reshape - dcast the mean value
result = dcast(res, subject + activity ~ feature, mean)

## write to file
write.table(res, "tidy.txt", row.names = FALSE, quote = FALSE, sep="\t")
write.table(result, "tidy_mean.txt", row.names = FALSE, quote = FALSE, sep="\t")
