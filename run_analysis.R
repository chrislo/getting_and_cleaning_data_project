# Merge the test and training data sets into new data frame
# - use read.table to load

train <- read.table('./dataset/train/X_train.txt', colClasses='numeric', comment.char='')
test <- read.table('./dataset/test/X_test.txt', colClasses='numeric', comment.char='')

data <- rbind(train, test)

# Extract the measurements of mean and standard deviation
# - load features.txt

features <- read.table('./dataset/features.txt', col.names=c('index', 'name'))

# - find those features that end in -mean() or -std()

idx = grep(".*-mean\\(\\)|.*-std\\(\\)", features$name)
relevantFeatures <- features[idx,]

# - create a new data frame with just those columns from merged set

relevantData <- data[, relevantFeatures$index]

# Use descriptive variable names
# - label the columns (perhaps remove '-' and '()' from features.txt

descriptiveVariableName <- function(orig) {
    new <- gsub('-', '', orig)
    new <- gsub('\\(\\)', '', new)
    new <- gsub('mean', 'Mean', new)
    new <- gsub('std', 'Std', new)
    return(new)
}

names(relevantData) <- sapply(relevantFeatures$name, descriptiveVariableName)

# Use descriptive activity names
# - load activity_labels.txt

activityLabels <- read.table('./dataset/activity_labels.txt', col.names=c('idx', 'activity'))

# - load test/y_test.txt and train/y_train.txt

yTrain <- read.table('./dataset/train/y_train.txt')
yTest <- read.table('./dataset/test/y_test.txt')

# - merge them

y <- rbind(yTrain, yTest)

# create factors from y using labels

relevantData$activity <- factor(y[[1]], labels=activityLabels$activity)

# Creates a second data set with the average of each variable for each activity and each subject
# - there's multiple rows per subject, so need to calculate mean grouping by activity and subject

# label subjects
subjectTrain <- read.table('./dataset/train/subject_train.txt')
subjectTest <- read.table('./dataset/test/subject_test.txt')

relevantData$subject <- rbind(subjectTrain, subjectTest)
relevantData$subject <- factor(relevantData$subject[[1]])
names(relevantData$subject) <- "subject"

# tidy data set
tidy <- aggregate(relevantData[,1:66],
                  by=list(
                      activity = relevantData$activity,
                      subject = relevantData$subject
                      ),
                  FUN=mean)

write.table(tidy, file = "tidy.txt", sep = ",", row.names = FALSE)
