library(igraph)

#exporting the rts.g graph object as a graphml file 
write.graph(rts.g, file="your_file.graphml", format="graphml") #rts.g is your graph file

##reading a graphml file as a graph object
g_import <- read.graph("your_file_in_the_working_dirctory.graphml", format = "graphml") 

