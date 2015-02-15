library("gplots")
library("ggplot2")
library("reshape2")

ggplot(G1, aes(x = DATALABEL,y = LOCATION)) + geom_point(colour="red")

ggplot(G2, aes(x = LOCATION)) + geom_histogram(fill="darkorange",colour="white",aes(weight=NUMBER_DATAPOINTS)) + coord_flip()
