#PBS -j oe -N makeFastq
module load sratoolkit
OUT=../fastq
for dir in SRR3138063
do
for file in `find $dir -name "*.sra"`
do
 base=`basename $file .sra`
 if [ ! -f $OUT/$base"_1.fastq.gz" ]; then
  echo "processing $base"
  fastq-dump --split-files -A $base -O $OUT $file 
 fi
done
done
