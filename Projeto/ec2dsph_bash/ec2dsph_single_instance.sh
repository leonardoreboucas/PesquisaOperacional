#/bin/bash
pdesc=Linux/UNIX
stime=2021-03-01T00:00:00
etime=2021-03-10T23:59:59
region=us-east-1
dpath=../results
mkdir -p $dpath
itype=c5n.2xlarge
echo $itype
aws ec2 describe-spot-price-history --instance-types $itype --product-description $pdesc --start-time $stime --end-time $etime --region $region


exit 0


set itype=c5n.9xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=i3.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=i3.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=m5.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=m5.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=r4.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

set itype=r5.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt
