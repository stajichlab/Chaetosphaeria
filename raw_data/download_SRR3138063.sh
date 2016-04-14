#PBS -l nodes=1:ppn=1,mem=2gb,walltime=2:00:00 -N aspergillusSRA -j oe 
module load aspera
module load sratoolkit
#prefetch 
ascp -i /opt/linux/centos/7.x/x86_64/pkgs/aspera/3.6.0/etc/asperaweb_id_dsa.openssh -k2 -T -l200m anonftp@ftp.ncbi.nlm.nih.gov:/sra/sra-instant/reads/ByRun/sra/SRR/SRR313/SRR3138063 ./
