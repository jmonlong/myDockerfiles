## Sync results from S3
# aws s3 cp s3://vg-k8s/users/jmonlong/vgamb/shasta-gfa/sync.sh .
# sh sync.sh

## Run snakemake
aws s3 cp s3://vg-k8s/users/jmonlong/vgamb/shasta-gfa/Snakefile .
snakemake -p --cores $1 $2
