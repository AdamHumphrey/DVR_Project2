library("dplyr")
library("tidyr")
G1 <- geo_springs %>% select(DATALABEL,LOCATION) %>% distinct() %>% filter(!is.na(LOCATION)) %>% slice(1:18)
tbl_df(G1)
