#-----Genome (these are always required)
genome=Chaetosphaeria.fa
organism_type=eukaryotic

#-----Re-annotation Using MAKER Derived GFF3
maker_gff=maker.output.old/Chaetosphaeria.all.functional.gff
est_pass=1
altest_pass=1
protein_pass=1
rm_pass=1
model_pass=0 #use gene models in maker_gff: 1 = yes, 0 = no
pred_pass=0 #use ab-initio predictions in maker_gff: 1 = yes, 0 = no
other_pass=0 #passthrough anyything else in maker_gff: 1 = yes, 0 = no

#-----EST Evidence (for best results provide a file for at least one)
est=Chaetosphaeria.mRNA.fa
altest= #EST/cDNA sequence file in fasta format from an alternate organism
est_gff= #aligned ESTs or mRNA-seq from an external GFF3 file
altest_gff= #aligned ESTs from a closly relate species in GFF3 format

#-----Protein Homology Evidence (for best results provide a file for at least one)
protein= uniprot_sprot.fasta
protein_gff=  #aligned protein homology evidence from an external GFF3 file

#-----Repeat Masking (leave values blank to skip repeat masking)
model_org=fungi
rmlib= #provide an organism specific repeat library in fasta format for RepeatMasker
repeat_protein=/opt/linux/centos/7.x/x86_64/pkgs/maker/2.31.8/data/te_proteins.fasta #provide a fasta file of transposable element proteins for RepeatRunner
rm_gff= #pre-identified repeat elements from an external GFF3 file
prok_rm=0 #forces MAKER to repeatmask prokaryotes (no reason to change this), 1 = yes, 0 = no
softmask=1 #use soft-masking rather than hard-masking in BLAST (i.e. seg and dust filtering)

#-----Gene Prediction
snaphmm=Chaetosphaeria.retrain.hmm
gmhmm=Chaetosphaeria.gmes.mod #GeneMark HMM file
augustus_species=Chaetosphaeria #Augustus gene prediction species model
fgenesh_par_file= #FGENESH parameter file
pred_gff= #ab-initio predictions from an external GFF3 file
model_gff= #annotated gene models from an external GFF3 file (annotation pass-through)
est2genome=1
protein2genome=1
trna=0 #find tRNAs with tRNAscan, 1 = yes, 0 = no
snoscan_rrna= #rRNA file to have Snoscan find snoRNAs
unmask=0 #also run ab-initio prediction programs on unmasked sequence, 1 = yes, 0 = no

#-----Other Annotation Feature Types (features MAKER doesn't recognize)
other_gff= #extra features to pass-through to final MAKER generated GFF3 file

#-----External Application Behavior Options
alt_peptide=C
cpus=4

#-----MAKER Behavior Options
max_dna_len=100000 #length for dividing up contigs into chunks (increases/decreases memory usage)
min_contig=1 #skip genome contigs below this length (under 10kb are often useless)

pred_flank=200 #flank for extending evidence clusters sent to gene predictors
pred_stats=0 #report AED and QI statistics for all predictions as well as models
AED_threshold=1 #Maximum Annotation Edit Distance allowed (bound by 0 and 1)
protein= uniprot_sprot.fasta
alt_splice=0 #Take extra steps to try and find alternative splicing, 1 = yes, 0 = no
always_complete=0
map_forward=0
keep_preds=0

split_hit=10000
single_exon=0
single_length=250
correct_est_fusion=0

tries=2
clean_try=0
clean_up=0
TMP= 
