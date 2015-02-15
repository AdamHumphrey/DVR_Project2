library("plyr")
library("dplyr")
library("tidyr")
G1 <- geo_springs %>% select(DATALABEL,LOCATION) %>% distinct() %>% filter(!is.na(LOCATION)) %>% slice(1:18)
tbl_df(G1)

G2 <- geo_springs %>% group_by(LOCATION) %>% summarise(NUMBER_DATAPOINTS=n())
tbl_df(G2)

G3 <- geo_springs %>% filter(DATALABEL == "DRAINS", LOCATION == "Cold Springs") %>% separate(TIME, c("PERIOD", "SAMPLE")) %>% group_by(PERIOD) %>% arrange(PERIOD) %>% summarise(AVERAGE = mean(VALUE))
tbl_df(G3)