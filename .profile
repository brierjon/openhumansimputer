# this file gets sourced at the start of the app
# after the heroku config vars.

IMP_BIN=$HOME/impbin
REF_PANEL=$HOME/1000GP_Phase3
DATA_DIR=$HOME/data
REF_FA=$HOME/hg19
OUT_DIR=$HOME/genipe_output

mkdir $IMP_BIN

echo DOWNLOADING IMPUTE2...
wget https://mathgen.stats.ox.ac.uk/impute/impute_v2.3.2_x86_64_static.tgz
tar -xvzf impute_v2.3.2_x86_64_static.tgz
mv impute_v2.3.2_x86_64_static/impute2 $IMP_BIN/impute2

echo DOWNLOADING PLINK...
wget http://zzz.bwh.harvard.edu/plink/dist/plink-1.07-x86_64.zip
unzip plink-1.07-x86_64
mv plink-1.07-x86_64/plink $IMP_BIN/plink

echo DOWNLOADING SHAPEIT...
wget https://mathgen.stats.ox.ac.uk/genetics_software/shapeit/shapeit.v2.r837.GLIBCv2.12.Linux.static.tgz
tar -xvzf shapeit.v2.r837.GLIBCv2.12.Linux.static.tgz
mv bin/shapeit $IMP_BIN/shapeit

mkdir $REF_PANEL
cd $REF_PANEL

echo DOWNLOADING 1kG HAPLOTYPES...
wget https://mathgen.stats.ox.ac.uk/impute/1000GP_Phase3.tgz
tar -xvzf 1000GP_Phase3.tgz
cd

echo DOWNLOADING HG19...
wget -P $REF_FA http://statgen.org/wp-content/uploads/Softwares/genipe/supp_files/hg19.fasta

# this is where the OH user data will exist
mkdir $DATA_DIR