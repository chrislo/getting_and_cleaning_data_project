# We are not interested in the distinction between test and training
# set, so first load those and merge them into a new data frame

train <- read.table('./dataset/train/X_train.txt', colClasses='numeric', comment.char='')
test <- read.table('./dataset/test/X_test.txt', colClasses='numeric', comment.char='')

data <- rbind(train, test)

# We are only interested in those features of the original datasets
# that contain mean or standard deviation measurements. We can find
# which column indexes those are using a regular expression match on
# `features.txt`

features <- read.table('./dataset/features.txt', col.names=c('index', 'name'))

idx = grep(".*-mean\\(\\)|.*-std\\(\\)", features$name)
relevantFeatures <- features[idx,]

# And then create a new data frame with just those columns from the merged
# set

relevantData <- data[, relevantFeatures$index]

# The variable names are a bit clunky, so we tidy them up using this
# function. It removes "-" and "()" from the original variable names,
# and normalises the case

descriptiveVariableName <- function(orig) {
    new <- gsub('-', '', orig)
    new <- gsub('\\(\\)', '', new)
    new <- gsub('mean', 'Mean', new)
    new <- gsub('std', 'Std', new)
    return(new)
}

# Run that function over each of the original feature names, and use
# it to name the columns of the tidy data set.

names(relevantData) <- sapply(relevantFeatures$name, descriptiveVariableName)

# We'd rather use use descriptive activity names, such as "STANDING"
# than integers. We load the labels provided

activityLabels <- read.table('./dataset/activity_labels.txt', col.names=c('idx', 'activity'))

# and then load the data files which indicate which row corresponds to
# which activity

yTrain <- read.table('./dataset/train/y_train.txt')
yTest <- read.table('./dataset/test/y_test.txt')

# merge them in the same order as the main dataset above

y <- rbind(yTrain, yTest)

# and then create factors in our tidy data set using these new labels

relevantData$activity <- factor(y[[1]], labels=activityLabels$activity)

# We do a similar thing with the files containing the subject labels,
# but we leave them as-is after converting to factors
subjectTrain <- read.table('./dataset/train/subject_train.txt')
subjectTest <- read.table('./dataset/test/subject_test.txt')

relevantData$subject <- rbind(subjectTrain, subjectTest)
relevantData$subject <- factor(relevantData$subject[[1]])
names(relevantData$subject) <- "subject"

# Finally we create the tidy data set by calculating the mean grouped
# by activity and subject. `aggregate` is fine to use here, as the
# dataset isn't too large and it runs fast enough

tidy <- aggregate(relevantData[,1:66],
                  by=list(
                      activity = relevantData$activity,
                      subject = relevantData$subject
                      ),
                  FUN=mean)

# We write the tidy dataset to a CSV file, but give it the '.txt'
# extension so that the coursera submission system accepts it.

write.table(tidy, file = "tidy.txt", sep = ",", row.names = FALSE)
