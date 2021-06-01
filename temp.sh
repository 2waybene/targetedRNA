##==================================================================
##	This folder contains analysis note for the targetedRNA
##	with FDA/SEQC consoritum
##==================================================================






for k in `cat sampleNames.txt `; do  echo "./table_annovar.pl  /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarInput/"$k"_RNA_ALL_annovar.txt humandb/  -buildver hg38 -out /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarOutput/"$k"_RNA_ALL_hg38 -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation gx,r,f,f,f -nastring . -csvout -polish -xref example/gene_xref.txt "; echo ""; done >> RNA_annovar.sh 









