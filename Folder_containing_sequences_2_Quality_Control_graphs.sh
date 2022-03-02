##################
# Installing required programs
##################
# apt install fastqc

#################
## Arguments given by the user
#################
# youroutputfolder=
# yourlogsfolder=
# inputfiles=
#  # Change *.gz , *.fastq , according to your files extension (it also accepts bam, sam , etc )
# you could add the argumen "-t 6" to fastqc to use 6 threads and speed up the process

mkdir -p $youroutputfolder
mkdir -p $yourlogsfolder # hint for choosing a name: youroutputfolder_logs

fastqc *.fastq.gz -t 6 -o $youroutputfolder &> $yourlogsfolder

