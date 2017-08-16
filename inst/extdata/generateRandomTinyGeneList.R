data("exampleDataSet",package="JctSeqData")

geneIDs <- jscs@flatGffGeneData$geneID

keep <- floor(runif(1053,0,10)) == 0
keep[geneIDs == "ENSRNOG00000009281"] <- TRUE
keepGenes <- geneIDs[keep]
length(keepGenes);

write.table(data.frame(keepGenes), file = "geneList.txt", row.names=FALSE,col.names=FALSE, quote=FALSE);

