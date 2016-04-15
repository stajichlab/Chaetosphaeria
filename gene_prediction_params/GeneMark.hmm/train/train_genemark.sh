#PBS -q batch -l nodes=1:ppn=8,walltime=192:00:00,mem=4gb -j oe
module load genemarkHMM/4.32

SPECIES=Chaetosphaeria
CPU=1
if [ $PBS_PPN ]; then
 CPU=$PBS_PPN
fi
if [ ! -f $SPECIES.long.fasta ]; then
 # from https://github.com/hyphaltip/genome-scripts
 perl /rhome/jstajich/src/genome-scripts/gene_prediction/select_long_ctgs.pl --min 10000 $SPECIES.fa > $SPECIES.long.fasta
fi
gmes_petap.pl --cores $CPU --ES --training --fungus --sequence $SPECIES.long.fasta
