# RNAseq_pipeline

This pipe line is aimed to analyse RNAseq data, in a modular and clear way.

### Practical sequence of commands
---
##### Quality control 
Exploring the raw reads with fastqc

```mkdir -p  /output/folder```  

```sh /folder/with/the/program/Folder_containing_sequences_2_Quality_Control_graphs.sh -i /folder/with/your/inputfiles -x .fastq.gz -o /output/folder -t 6 &> /path/for/your/logs/Errors_in_this_run.logs```  


