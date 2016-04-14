#PBS -q batch -l nodes=1:ppn=1,walltime=192:00:00,mem=8gb -j oe
module load genemarkHMM/2.3e

SPECIES=Chaetosphaeria
CPU=1
if [ $PBS_PPN ]; then
 CPU=$PBS_PPN
fi
if [ ! -f $SPECIES.long.fasta ]; then
 perl /rhome/jstajich/src/genome-scripts/gene_prediction/select_long_ctgs.pl --min 10000 $SPECIES.fa > $SPECIES.long.fasta
fi
nohup gm_es.pl $SPECIES.long.fasta >& train.log
