\name{exampleDataSet}
\docType{data}

\alias{fullExampleDataSet}
\alias{jscs}
\alias{jscs2}
\alias{exampleDataSet}
\alias{tinyExampleDataSet}

\title{Example JunctionSeq Dataset}
\description{
  \code{fullExampleDataSet} contains a small JunctionSeqCountSet.
  \code{exampleDataSet} contains an \emph{extremely} small JunctionSeqCountSet.
}
\usage{
  data("exampleDataSet")
  data("fullExampleDataSet")
}
\note{
  \emph{IMPORTANT: THIS DATASET IS INTENDED FOR TESTING ONLY.}
  
  The original dataset had 24 samples which were multiplexed and sequenced
  across 6 lanes. Only 6 of those samples were selected for use in this 
  example dataset, and only the first three lanes were used. In addition, 
  only chromosome 14 was included in its entirety. We also included a
  small number of genes randomly from chromosomes 15, X, and M.
  
  A number of minor modifications were made to the dataset to provide 
  artificial edge cases for code testing.
  
  The \code{fullExampleDataSet} dataset contains 14851 counting bins, 11365 of which are 
  testable (ie. nonzero). Of these, 6154 are exonic regions, 5072 are 
  known splice junctions, and 139 are novel splice junctions.
  
  The \code{exampleDataSet} dataset is cut down even further to provide an
  extremely small dataset for testing purposes. It
  contains 1464 counting bins, 1103 of which are testable (ie. nonzero). 
  Of these, 600 are exonic regions, 492 are known splice
  junctions, and 11 are novel splice junctions. These features span 58 genes.
  
  NONE of these datasets are intended to be representative of the original data. 
  
  \emph{IMPORTANT: THIS DATASET IS INTENDED FOR TESTING ONLY.}
}
\format{JunctionSeqCountSet}
\examples{
#The smaller example dataset was generated using the code:
decoder.file <- system.file(
        "extdata/annoFiles/decoder.bySample.txt",
        package="JctSeqData");
decoder <- read.table(decoder.file,
        header=TRUE,
        stringsAsFactors=FALSE);
gff.file <- system.file(
        "extdata/tiny/withNovel.forJunctionSeq.gff.gz",
        package="JctSeqData");
countFiles <- system.file(paste0("extdata/tiny/",
        decoder$sample.ID,
        "/QC.spliceJunctionAndExonCounts.withNovel.forJunctionSeq.txt.gz"),
        package="JctSeqData");

\dontrun{
library("JunctionSeq");
jscs <- runJunctionSeqAnalyses(sample.files = countFiles,
        sample.names = decoder$sample.ID,
        condition=factor(decoder$group.ID),
        flat.gff.file = gff.file,
        analysis.type = "junctionsAndExons");
}
}

\source{
  A complete and comprehensive analysis pipeline walkthrough that 
  includes the generation of this dataset can be found online 
  \href{http://dl.dropboxusercontent.com/u/103621176/pipelineWalkthrough/example-walkthrough.pdf}{here}.
  
  The bam files can be found \href{http://dl.dropboxusercontent.com/u/103621176/pipelineWalkthrough/bamfiles.zip}{here},
  and the walkthrough with processed results can be found \href{http://dl.dropboxusercontent.com/u/103621176/pipelineWalkthrough/QoRTsPipelineWalkthrough.zip}{here}
  
  The original, full-size datasets are available on the NCBI Gene Expression Omnibus (GEO), accession number GSE63309. 
}
\value{
  (Not Applicable.)
}
\references{  
  Hartley, S. W., Coon, S. L., Savastano, L. E., Mullikin, J. C., Fu, C., Klein, D. C., & NISC Comparative Sequencing Program. (2015). \emph{Neurotranscriptomics: The Effects of Neonatal Stimulus Deprivation on the Rat Pineal Transcriptome}. PloS one, 10(9), e0137548.
}
\keyword{datasets}