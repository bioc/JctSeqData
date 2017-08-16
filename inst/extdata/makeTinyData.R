library("JunctionSeq");

########################################
#Set up example data:
decoder.file <- system.file("extdata/annoFiles/decoder.bySample.txt",package="JctSeqData");
decoder <- read.table(decoder.file,
                      header=TRUE,
                      stringsAsFactors=FALSE);
gff.file <- system.file("extdata/tiny/withNovel.forJunctionSeq.gff.gz",package="JctSeqData");
countFiles <- system.file(paste0("extdata/tiny/",
                 decoder$sample.ID,
                 "/QC.spliceJunctionAndExonCounts.withNovel.forJunctionSeq.txt.gz"),
                 package="JctSeqData");

geneID.to.symbol.file <- system.file(
                            "extdata/annoFiles/ensid.2.symbol.txt",
                            package="JctSeqData", 
                            mustWork=TRUE);

jscs <- runJunctionSeqAnalyses(sample.files = countFiles,
           sample.names = decoder$sample.ID,
           condition=factor(decoder$group.ID),
           flat.gff.file = gff.file,
           analysis.type = "junctionsAndExons",
           gene.names = geneID.to.symbol.file
);

save(jscs, file = "../../data/exampleDataSet.RData");

#rm(countFiles);
#rm(gff.file);
#rm(decoder.file);
#save.image(file = "../../data/exampleDataSet.RData");

