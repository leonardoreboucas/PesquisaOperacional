@echo off

set pdesc=Linux/UNIX
set stime=2020-12-24T00:00:00
set etime=2021-01-17T23:59:59
set region=us-east-1
set dpath=c:\Temp\

set itype=c5n.2xlarge
echo %itype%
aws ec2 describe-spot-price-history --instance-types %itype% --product-description %pdesc% --start-time %stime% --end-time %etime% --region %region% >> %dpath%%itype%.txt

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
