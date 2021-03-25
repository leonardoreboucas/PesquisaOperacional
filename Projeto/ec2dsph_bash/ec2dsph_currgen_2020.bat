@echo off

set pdesc=Linux/UNIX
set stime=2020-12-01T00:00:00
set etime=2020-12-31T23:59:59
set region=us-east-1
set dpath=c:\Temp\
set ftype=.txt

set itype=a1.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=a1.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=a1.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=a1.medium
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=a1.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=a1.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c4.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c4.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c4.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c4.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c4.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.18xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.9xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.18xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.9xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5d.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.18xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.9xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=c5n.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=d2.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=d2.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=d2.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=d2.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=f1.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=f1.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=f1.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g3.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g3.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g3.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g3s.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=g4dn.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=h1.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=h1.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=h1.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=h1.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.3xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.6xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=i3en.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=inf1.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=inf1.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=inf1.6xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=inf1.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.10xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m4.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5a.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5ad.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5d.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5dn.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m5n.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.medium
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=m6g.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p2.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p2.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p2.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p3.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p3.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p3.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=p3dn.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r4.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5a.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5ad.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5d.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5dn.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.24xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=r5n.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.medium
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.micro
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.nano
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.small
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t2.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.medium
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.micro
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.nano
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.small
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.medium
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.micro
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.nano
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.small
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=t3a.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=u-12tb1.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=u-6tb1.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=u-9tb1.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1.32xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.16xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.32xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.4xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.8xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=x1e.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.12xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.3xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.6xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.large
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.metal
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%

set itype=z1d.xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%%ftype%
