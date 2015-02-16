library("gplots")
library("ggplot2")
library("reshape2")

ggplot(G1, aes(x = DATALABEL,y = LOCATION)) + geom_point(colour="red") + ggtitle("Location vs. Datalabel")

ggplot(G2, aes(x = LOCATION)) + geom_histogram(fill="darkorange",colour="white",aes(weight=NUMBER_DATAPOINTS)) + ggtitle ("Location vs. Number of datapoints") + ylab("Number of Datapoints") + coord_flip()

# This graph shows the average for each drain period that was measured.
ggplot(G3, aes(x = PERIOD, y = AVERAGE)) + geom_area(colour="red") + ggtitle(Average Drainage per Observation Period)
