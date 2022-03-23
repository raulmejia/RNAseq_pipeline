#!/bin/bash
##################
### Purpose of this program
##################
# takes as input a folder with fastqc results and retrieves multiqc reports
# https://multiqc.info/ and https://multiqc.info/docs/

##################
# example of use
##################
### sh /code_folder/Quality_Control_and_Preprocessing/multiqc_taking_a_folder_with_fastqc_results.sh -i /output/folder_fastqc_for_the_raw_reads -o /output/folder_fastqc_for_the_raw_reads/multiqc

##################
# Installing required programs
##################
# pip install multiqc

#################
## Arguments given by the user
################# 
while getopts ":i:o:h" opt; do
  case $opt in
    h)
      echo "Usage: $(basename $0) [-i /input/folder] [-o /output/folder/]"
      echo "Explaining acronyms: -i = input folder  -o = output folder"
      ;;
    i)
      echo "-i option was used, with the following input: $OPTARG" >&2   
         inputfolder=$OPTARG
      ;;
    o)
      echo "-o option was used, with the following input: $OPTARG" >&2   
        youroutputfolder=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

###################
## The program starts
###################
mkdir -p $youroutputfolder

multiqc $inputfolder -o $youroutputfolder
