
## setting the work directory
setwd("C:/Users/htw606/Documents/2018 09 08 Universitet/Disinfo/Logistics/Own course/Courses 2018 info/SNA/scripts")

###########################################################################
#########Importing network file from Youtube Data Tools####################
###########################################################################

### loading the packages
library(readgdf)
library(igraph)

### reading the gdf file that has been created the Youtube tool
g <- read_gdf("data/pepe.gdf")

### plotting the network
plot.igraph(g, edge.arrow.size = 0.1)

#extractling an edgelist from the nework graph
g.edge <- as_edgelist(g)
# storing the edgelist as a dataframe
y_y_edge <- as.data.frame(g.edge)



###########################################################################
###############Using Youtube's API from R##################################
###########################################################################

library("tuber") #YouTube API V3.
yt_oauth(app_id = "751322083724-f0j17h4umtcnvqnhe907lp0ger2s9jbl.apps.googleusercontent.com",
         app_secret = "Vxg9be1nV4105HSfPG-r4-CE", token = '')

## download video details 
pepe_video <- get_video_details("7Q5HK9HsBSU")

## downloading list of channels that the channel in question subscribed to
pepe_channel <- get_subscriptions(filter = c(channel_id = "UCN3iJoH8x_-rGlmj_UmKACQ"))
