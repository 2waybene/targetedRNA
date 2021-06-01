##==================================================================
##	This folder contains analysis note for the targetedRNA
##	with FDA/SEQC consoritum
##==================================================================


for k in `cat sampleNames.txt `; do  echo "./table_annovar.pl  /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarInput/"$k"_DNA_ONLY_annovar.txt humandb/  -buildver hg38 -out /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarOutput/"$k"_DNA_ONLY_hg38 -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation gx,r,f,f,f -nastring . -csvout -polish -xref example/gene_xref.txt "; echo ""; done >> DNA_annovar.sh 


for k in `cat sampleNames.txt `; do  echo "./table_annovar.pl  /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarInput/"$k"_RNA_ONLY_annovar.txt humandb/  -buildver hg38 -out /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarOutput/"$k"_RNA_ONLY_hg38 -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation gx,r,f,f,f -nastring . -csvout -polish -xref example/gene_xref.txt "; echo ""; done >> RNA_annovar.sh 


for k in `cat sampleNames.txt `; do  echo "./table_annovar.pl  /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarInput/"$k"_RNA_ALL_annovar.txt humandb/  -buildver hg38 -out /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/annovarOutput/"$k"_RNA_ALL_hg38 -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation gx,r,f,f,f -nastring . -csvout -polish -xref example/gene_xref.txt "; echo ""; done >> RNA_annovar.sh 









# ./table_annovar.pl /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/ROCR2_A_1_DNA_ONLY_annovar.txt humandb/ -buildver hg38 -out /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/ROCR2_A_1_DNA_ONLY_hg38 -remove -protocol refGene,cytoBand,exac03,avsnp147,dbnsfp30a -operation gx,r,f,f,f -nastring . -csvout -polish -xref example/gene_xref.txt




# cut -d"," -f6 /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/ROCR2_A_1_DNA_ONLY_hg38.hg38_multianno.csv | sed 's/\"//g' | sort | uniq 

# cut -d"," -f6 /ddn/gs1/home/li11/project2021/SEQC/dataFromFDA/ROCR2_sampleA/AnnoVarAnalysis/ROCR2_A_1_DNA_ONLY_hg38.hg38_multianno.csv | sed 's/\"//g' | awk -F"\t" 'BEGIN{print "Category\tFreq"} {a[$1]++} END{for(i in a)print i"\t"a[i]}'




