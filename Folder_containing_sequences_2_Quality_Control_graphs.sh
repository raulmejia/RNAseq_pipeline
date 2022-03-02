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
#  # Change *.gz , *.fastq , according to your files extension
# you could add the argumen "-t 6" to fastqc to use 6 threads and speed up the process

mkdir -p $youroutputfolder
mkdir -p $yourlogsfolder # hint for choosing a name: youroutputfolder_logs

fastqc *  -o &> $yourlogsfolder
