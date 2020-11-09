#echo $1 $2 $3
# references https://currentprotocols.onlinelibrary.wiley.com/doi/full/10.1002/0471250953.bi1504s44#cpbi1504-tbl-0005
###############################
## Data given by the user
###############################
reference_fasta=$1
father=$2
mother=$3
child=$4
output=$5

echo $reference_fasta $father $mother $child $output

samtools mpileup ‐B ‐q 1 ‐f $reference_fasta $father $mother $child > $output
#samtools mpileup ‐B ‐q 1 ‐f reference.fasta father.bam mother.bam child.bam > trio.mpileup

