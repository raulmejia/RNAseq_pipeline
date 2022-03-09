#!/bin/bash
##################
### Purpose of this program
##################

##################
# example of use
##################
### sh /folder/with/the/program/Folder_containing_sequences_2_Quality_Control_graphs.sh -i /folder/with/your/inputfiles -x .fastq.gz -o /output/folder -t 6 &> /path/for/your/logs/Errors_in_this_run.logs
##################
# Installing required programs
##################
# apt install fastqc # Maybe your JAVA would be upgraded

#################
## Arguments given by the user
################# 
while getopts ":i:x:o:t:h" opt; do
  case $opt in
    h)
      echo "Usage: $(basename $0) [-i /input/folder/*fastq.gz] [-x .fastq.gz] [-o /output/folder/] [-t 6]"
      echo "Explaining acronyms: -i = input folder *fastq.gz -x extension of your files -o = output folder , -t = number of threads to be used for the current run, -h = help"
      echo "Note 1/2: In -x argument, you can change *fastq.gz for *.fastq or it also accepts sam, bam, etc"
      echo "Note 2/2: In -t argument, you can change for a different number of cores / threads"
      ;;
    i)
      echo "-i option was used, with the following input: $OPTARG" >&2   
         inputfiles=$OPTARG
      ;;
    x)
      echo "-x option was used, with the following input: $OPTARG" >&2   
         extension_of_your_files=$OPTARG
      ;;
    o)
      echo "-o option was used, with the following input: $OPTARG" >&2   
        youroutputfolder=$OPTARG
      ;;
    t)
      echo "-t option was used, with the following input: $OPTARG" >&2   
         NumberOfThreads=$OPTARG
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
# inputfiles=
# youroutputfolder= 
# yourlogsfolder=
# NumberOfThreads=

mkdir -p $youroutputfolder

fastqc $inputfiles/*$extension_of_your_files -o $youroutputfolder -t 6

