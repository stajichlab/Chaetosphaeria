#PBS -q js -l nodes=1:ppn=4,walltime=192:00:00,mem=16gb -j oe
module load genemarkHMM/4.21
module unload perl
module load perl/5.16.3

SPECIES=Chaetosphaeria
CPU=1
if [ $PBS_PPN ]; then
 CPU=$PBS_PPN
fi
if [ ! -f $SPECIES.long.fasta ]; then
 perl /rhome/jstajich/src/genome-scripts/gene_prediction/select_long_ctgs.pl --min 10000 $SPECIES.fa > $SPECIES.long.fasta
fi
gmes_petap.pl --cores $CPU --pbs --ES  --fungus --sequence $SPECIES.long.fasta
