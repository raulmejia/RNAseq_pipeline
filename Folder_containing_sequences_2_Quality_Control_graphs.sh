#!/bin/bash
##################
# Installing required programs
##################
# apt install fastqc # Maybe your would need to actualize your java version

#################
## Arguments given by the user
################# 
 
while getopts ":a:z:h" opt; do
  case $opt in
    h)
      echo "Usage: $(basename $0) [-z] [-a /some/path]"
      echo "Explaining acronyms: -a = alahala, -z = bubulubu, -h = help"
      ;;
    a)
      echo "-a was triggered, Parameter: $OPTARG" >&2   
        alahala=$OPTARG
      ;;
    z)
      echo "-z was triggered, Parameter: $OPTARG" >&2   
         zulu=$OPTARG
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

echo  "hallo"


###################
##
###################



# youroutputfolder=
# yourlogsfolder=
# inputfiles=
#  # Change *.gz , *.fastq , according to your files extension (it also accepts bam, sam , etc )
# you could add the argumen "-t 6" to fastqc to use 6 threads and speed up the process

####mkdir -p $youroutputfolder
####mkdir -p $yourlogsfolder # hint for choosing a name: youroutputfolder_logs


# lets organize the parameters with getopts https://wiki.bash-hackers.org/howto/getopts_tutorial

####fastqc *.fastq.gz -t 6 -o $youroutputfolder &> $yourlogsfolder

