
rm -rf /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts
rm -rf /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles
rm -rf /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/cts
rm -rf /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/results
rm -rf /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/tiny

mkdir /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts
mkdir /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles
mkdir /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/cts
mkdir /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/results
mkdir /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/tiny

cp /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/inputData/annoFiles/*.* /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles/
cp /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/forJunctionSeq.gff.gz /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles/JunctionSeq.flat.gff.gz
cp /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/forDEXSeq.gff.gz /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles/DEXSeq.flat.gff.gz
cp /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/countTables/orphanSplices.gff.gz /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles/
cp /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/countTables/withNovel.forJunctionSeq.gff.gz /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/annoFiles/

cp -R /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/countTables/* /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/cts/
cp -R /cluster/ifs/users/mullikin/Klein/steve/projects/ZZZ-ExampleDataset/TestSets/QoRTsPipelineWalkthrough/outputData/qortsData/* /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/

rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.cigarOp*.txt.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.gc.*.txt.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.geneBodyCoverage*.txt.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.insert.size*.txt.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.junctionBed*.bed.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.NVC*.txt.gz
rm /home/hartleys/UTILS/R/JctSeqExData2/inst/extdata/rawCts/*/QC.wiggle*.wig.gz






