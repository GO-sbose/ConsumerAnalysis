setwd("Work/AI")

ptm <- proc.time()
data_listingsite_20150719_1 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_1_5.listingsite",sep="|", header = FALSE)
proc.time() - ptm

ptm <- proc.time()
data_listingsite_20150719_2 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_6_10.listingsite",sep="|", header = FALSE)
proc.time() - ptm

ptm <- proc.time()
data_listingsite_20150719_3 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_11_14.listingsite",sep="|", header = FALSE)
proc.time() - ptm

ptm <- proc.time()
data_listingsite_20150719_4 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_15_17.listingsite",sep="|", header = FALSE)
proc.time() - ptm

ptm <- proc.time()
data_listingsite_20150719_5 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_18_20.listingsite",sep="|", header = FALSE)
proc.time() - ptm

ptm <- proc.time()
data_listingsite_20150719_6 = read.csv("AkamaiParsed/20150719/ListingSite/IT_50116.esw3c_S.20150719_21_24.listingsite",sep="|", header = FALSE)
proc.time() - ptm

#data_listingsite_20150719 = read.csv("AkamaiParsed/20150719/20150719_All.listingsite",sep="|", header = FALSE)

head(data_listingsite_20150719_1)
data_listingsite_20150719_1$V1 <- NULL
data_listingsite_20150719_1$V6 <- NULL
colnames(data_listingsite_20150719_1) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_1)

head(data_listingsite_20150719_2)
data_listingsite_20150719_2$V1 <- NULL
data_listingsite_20150719_2$V6 <- NULL
colnames(data_listingsite_20150719_2) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_2)

head(data_listingsite_20150719_3)
data_listingsite_20150719_3$V1 <- NULL
data_listingsite_20150719_3$V6 <- NULL
colnames(data_listingsite_20150719_3) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_3)

head(data_listingsite_20150719_4)
data_listingsite_20150719_4$V1 <- NULL
data_listingsite_20150719_4$V6 <- NULL
colnames(data_listingsite_20150719_4) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_4)

head(data_listingsite_20150719_5)
data_listingsite_20150719_5$V1 <- NULL
data_listingsite_20150719_5$V6 <- NULL
colnames(data_listingsite_20150719_5) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_5)

head(data_listingsite_20150719_6)
data_listingsite_20150719_6$V1 <- NULL
data_listingsite_20150719_6$V6 <- NULL
colnames(data_listingsite_20150719_6) <- c("ListingSite","LogDay","IP","SiteID","ActionID")
head(data_listingsite_20150719_6)

data_listingsite_20150719_distinctListingID_1 <- subset(data_listingsite_20150719_1, duplicated(data_listingsite_20150719_1$ListingSite)==FALSE)
data_listingsite_20150719_distinctListingID_2 <- subset(data_listingsite_20150719_2, duplicated(data_listingsite_20150719_2$ListingSite)==FALSE)
data_listingsite_20150719_distinctListingID_3 <- subset(data_listingsite_20150719_3, duplicated(data_listingsite_20150719_3$ListingSite)==FALSE)
data_listingsite_20150719_distinctListingID_4 <- subset(data_listingsite_20150719_4, duplicated(data_listingsite_20150719_4$ListingSite)==FALSE)
data_listingsite_20150719_distinctListingID_5 <- subset(data_listingsite_20150719_5, duplicated(data_listingsite_20150719_5$ListingSite)==FALSE)
data_listingsite_20150719_distinctListingID_6 <- subset(data_listingsite_20150719_6, duplicated(data_listingsite_20150719_6$ListingSite)==FALSE)

df <- data.frame(nrow = c(
  nrow(data_listingsite_20150719_1), 
  nrow(data_listingsite_20150719_2),
  nrow(data_listingsite_20150719_3),
  nrow(data_listingsite_20150719_4),
  nrow(data_listingsite_20150719_5),
  nrow(data_listingsite_20150719_6)
  ),
  nrow_distinct = c(
    nrow(data_listingsite_20150719_distinctListingID_1),
    nrow(data_listingsite_20150719_distinctListingID_2),
    nrow(data_listingsite_20150719_distinctListingID_3),
    nrow(data_listingsite_20150719_distinctListingID_4),
    nrow(data_listingsite_20150719_distinctListingID_5),
    nrow(data_listingsite_20150719_distinctListingID_6)
                 ))
df

write.table(data_listingsite_20150719_distinctListingID_1,"data_listingsite_20150719_distinctListingID_1.csv",sep=" ")
write.table(data_listingsite_20150719_distinctListingID_2,"data_listingsite_20150719_distinctListingID_2.csv",sep=" ")
write.table(data_listingsite_20150719_distinctListingID_3,"data_listingsite_20150719_distinctListingID_3.csv",sep=" ")
write.table(data_listingsite_20150719_distinctListingID_4,"data_listingsite_20150719_distinctListingID_4.csv",sep=" ")
write.table(data_listingsite_20150719_distinctListingID_5,"data_listingsite_20150719_distinctListingID_5.csv",sep=" ")
write.table(data_listingsite_20150719_distinctListingID_6,"data_listingsite_20150719_distinctListingID_6.csv",sep=" ")

data_listingsite_20150719_allday_1 <- merge(
  data_listingsite_20150719_distinctListingID_1,
  data_listingsite_20150719_distinctListingID_2, 
  all.x=TRUE,all.y=TRUE)
nrow(data_listingsite_20150719_allday_1)
43358+39473

nrow(data_listingsite_20150719_distinctListingID_3)
data_listingsite_20150719_allday_2 <- merge(
  data_listingsite_20150719_allday_1,
  data_listingsite_20150719_distinctListingID_3,
  all.x=TRUE,all.y=TRUE)
nrow(data_listingsite_20150719_allday_1) + nrow(data_listingsite_20150719_distinctListingID_3)
nrow(data_listingsite_20150719_allday_2)

nrow(data_listingsite_20150719_distinctListingID_4)
data_listingsite_20150719_allday_3 <- merge(
  data_listingsite_20150719_allday_2,
  data_listingsite_20150719_distinctListingID_4,
  all.x=TRUE,all.y=TRUE)
nrow(data_listingsite_20150719_allday_2) + nrow(data_listingsite_20150719_distinctListingID_4)
nrow(data_listingsite_20150719_allday_3)

nrow(data_listingsite_20150719_distinctListingID_5)
data_listingsite_20150719_allday_4 <- merge(
  data_listingsite_20150719_allday_3,
  data_listingsite_20150719_distinctListingID_5,
  all.x=TRUE,all.y=TRUE)
nrow(data_listingsite_20150719_allday_3) + nrow(data_listingsite_20150719_distinctListingID_5)
nrow(data_listingsite_20150719_allday_4)

nrow(data_listingsite_20150719_distinctListingID_6)
data_listingsite_20150719_allday_5 <- merge(
  data_listingsite_20150719_allday_4,
  data_listingsite_20150719_distinctListingID_6,
  all.x=TRUE,all.y=TRUE)
nrow(data_listingsite_20150719_allday_4) + nrow(data_listingsite_20150719_distinctListingID_6)
nrow(data_listingsite_20150719_allday_5)

data_listingsite_20150719_allday <- data_listingsite_20150719_allday_5
write.table(data_listingsite_20150719_allday,"data_listingsite_20150719_allday.csv",sep=" ")

data_listingsite_20150719_allday_distListID <- subset(data_listingsite_20150719_allday, duplicated(data_listingsite_20150719_allday$ListingSite)==FALSE)
nrow(data_listingsite_20150719_allday_distListID)
write.table(data_listingsite_20150719_allday_distListID,"df_final.csv",sep = " ")
head(data_listingsite_20150719_allday_distListID)
#unique(data_listingsite_20150719_allday_distListID$ActionID)

data_cat = read.csv("/Users/sbose/Work/AI/AkamaiParsed/20150719/data_cat_20150719.csv",sep="|")
data_cat_level1 = subset(data_cat, data_cat$CategoryTreeLevel==1)
write.table(data_cat_level1,"data_cat_level1.csv",sep = " ")
nrow(data_cat_level1)

data_cat_level1_distList <- subset(data_cat_level1, duplicated(data_cat_level1$ListingID)==FALSE)
nrow(data_cat_level1_distList)

# merging parsed data with the queried SHL data through ListingID's
ultimate <- merge(data_cat_level1, data_listingsite_20150719_allday_distListID, by.x = "ListingID", by.y = "ListingSite")
nrow(ultimate)
write.table(ultimate,"parsed_cat_20150919.csv",sep = "|")

#nrow(data_listingsite_20150719_allday_1)
#nrow(data_listingsite_20150719_allday_2)
#nrow(data_listingsite_20150719_allday_3)
#nrow(data_listingsite_20150719_allday_4)
#nrow(data_listingsite_20150719_allday)
