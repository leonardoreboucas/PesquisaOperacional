@echo off
echo running ec2dsph...
echo c4.8xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_c4.8xlarge_us-east-1.txt
echo c4.8xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_c4.8xlarge_us-east-2.txt
echo c4.8xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_c4.8xlarge_us-west-1.txt
echo c4.8xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_c4.8xlarge_us-west-2.txt
echo c4.8xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_c4.8xlarge_ca-central-1.txt
echo c4.8xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_c4.8xlarge_eu-central-1.txt
echo c4.8xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_c4.8xlarge_eu-west-1.txt
echo c4.8xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_c4.8xlarge_eu-west-2.txt
echo c4.8xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_c4.8xlarge_eu-west-3.txt
echo c4.8xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_c4.8xlarge_eu-north-1.txt
echo c4.8xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_c4.8xlarge_ap-east-1.txt
echo c4.8xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_c4.8xlarge_ap-northeast-1.txt
echo c4.8xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_c4.8xlarge_ap-northeast-2.txt
echo c4.8xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_c4.8xlarge_ap-northeast-3.txt
echo c4.8xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_c4.8xlarge_ap-southeast-1.txt
echo c4.8xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_c4.8xlarge_ap-southeast-2.txt
echo c4.8xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_c4.8xlarge_ap-south-1.txt
echo c4.8xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_c4.8xlarge_me-south-1.txt
echo c4.8xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types c4.8xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_c4.8xlarge_sa-east-1.txt
echo c5d.9xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_c5d.9xlarge_us-east-1.txt
echo c5d.9xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_c5d.9xlarge_us-east-2.txt
echo c5d.9xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_c5d.9xlarge_us-west-1.txt
echo c5d.9xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_c5d.9xlarge_us-west-2.txt
echo c5d.9xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_c5d.9xlarge_ca-central-1.txt
echo c5d.9xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_c5d.9xlarge_eu-central-1.txt
echo c5d.9xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_c5d.9xlarge_eu-west-1.txt
echo c5d.9xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_c5d.9xlarge_eu-west-2.txt
echo c5d.9xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_c5d.9xlarge_eu-west-3.txt
echo c5d.9xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_c5d.9xlarge_eu-north-1.txt
echo c5d.9xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_c5d.9xlarge_ap-east-1.txt
echo c5d.9xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_c5d.9xlarge_ap-northeast-1.txt
echo c5d.9xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_c5d.9xlarge_ap-northeast-2.txt
echo c5d.9xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_c5d.9xlarge_ap-northeast-3.txt
echo c5d.9xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_c5d.9xlarge_ap-southeast-1.txt
echo c5d.9xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_c5d.9xlarge_ap-southeast-2.txt
echo c5d.9xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_c5d.9xlarge_ap-south-1.txt
echo c5d.9xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_c5d.9xlarge_me-south-1.txt
echo c5d.9xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types c5d.9xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_c5d.9xlarge_sa-east-1.txt
echo g3s.xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_g3s.xlarge_us-east-1.txt
echo g3s.xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_g3s.xlarge_us-east-2.txt
echo g3s.xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_g3s.xlarge_us-west-1.txt
echo g3s.xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_g3s.xlarge_us-west-2.txt
echo g3s.xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_g3s.xlarge_ca-central-1.txt
echo g3s.xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_g3s.xlarge_eu-central-1.txt
echo g3s.xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_g3s.xlarge_eu-west-1.txt
echo g3s.xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_g3s.xlarge_eu-west-2.txt
echo g3s.xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_g3s.xlarge_eu-west-3.txt
echo g3s.xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_g3s.xlarge_eu-north-1.txt
echo g3s.xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_g3s.xlarge_ap-east-1.txt
echo g3s.xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_g3s.xlarge_ap-northeast-1.txt
echo g3s.xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_g3s.xlarge_ap-northeast-2.txt
echo g3s.xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_g3s.xlarge_ap-northeast-3.txt
echo g3s.xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_g3s.xlarge_ap-southeast-1.txt
echo g3s.xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_g3s.xlarge_ap-southeast-2.txt
echo g3s.xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_g3s.xlarge_ap-south-1.txt
echo g3s.xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_g3s.xlarge_me-south-1.txt
echo g3s.xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types g3s.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_g3s.xlarge_sa-east-1.txt
echo h1.4xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_h1.4xlarge_us-east-1.txt
echo h1.4xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_h1.4xlarge_us-east-2.txt
echo h1.4xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_h1.4xlarge_us-west-1.txt
echo h1.4xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_h1.4xlarge_us-west-2.txt
echo h1.4xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_h1.4xlarge_ca-central-1.txt
echo h1.4xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_h1.4xlarge_eu-central-1.txt
echo h1.4xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_h1.4xlarge_eu-west-1.txt
echo h1.4xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_h1.4xlarge_eu-west-2.txt
echo h1.4xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_h1.4xlarge_eu-west-3.txt
echo h1.4xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_h1.4xlarge_eu-north-1.txt
echo h1.4xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_h1.4xlarge_ap-east-1.txt
echo h1.4xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_h1.4xlarge_ap-northeast-1.txt
echo h1.4xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_h1.4xlarge_ap-northeast-2.txt
echo h1.4xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_h1.4xlarge_ap-northeast-3.txt
echo h1.4xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_h1.4xlarge_ap-southeast-1.txt
echo h1.4xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_h1.4xlarge_ap-southeast-2.txt
echo h1.4xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_h1.4xlarge_ap-south-1.txt
echo h1.4xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_h1.4xlarge_me-south-1.txt
echo h1.4xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types h1.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_h1.4xlarge_sa-east-1.txt
echo i3.4xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_i3.4xlarge_us-east-1.txt
echo i3.4xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_i3.4xlarge_us-east-2.txt
echo i3.4xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_i3.4xlarge_us-west-1.txt
echo i3.4xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_i3.4xlarge_us-west-2.txt
echo i3.4xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_i3.4xlarge_ca-central-1.txt
echo i3.4xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_i3.4xlarge_eu-central-1.txt
echo i3.4xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_i3.4xlarge_eu-west-1.txt
echo i3.4xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_i3.4xlarge_eu-west-2.txt
echo i3.4xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_i3.4xlarge_eu-west-3.txt
echo i3.4xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_i3.4xlarge_eu-north-1.txt
echo i3.4xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_i3.4xlarge_ap-east-1.txt
echo i3.4xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_i3.4xlarge_ap-northeast-1.txt
echo i3.4xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_i3.4xlarge_ap-northeast-2.txt
echo i3.4xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_i3.4xlarge_ap-northeast-3.txt
echo i3.4xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_i3.4xlarge_ap-southeast-1.txt
echo i3.4xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_i3.4xlarge_ap-southeast-2.txt
echo i3.4xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_i3.4xlarge_ap-south-1.txt
echo i3.4xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_i3.4xlarge_me-south-1.txt
echo i3.4xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types i3.4xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_i3.4xlarge_sa-east-1.txt
echo m4.16xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_m4.16xlarge_us-east-1.txt
echo m4.16xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_m4.16xlarge_us-east-2.txt
echo m4.16xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_m4.16xlarge_us-west-1.txt
echo m4.16xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_m4.16xlarge_us-west-2.txt
echo m4.16xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_m4.16xlarge_ca-central-1.txt
echo m4.16xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_m4.16xlarge_eu-central-1.txt
echo m4.16xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_m4.16xlarge_eu-west-1.txt
echo m4.16xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_m4.16xlarge_eu-west-2.txt
echo m4.16xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_m4.16xlarge_eu-west-3.txt
echo m4.16xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_m4.16xlarge_eu-north-1.txt
echo m4.16xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_m4.16xlarge_ap-east-1.txt
echo m4.16xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_m4.16xlarge_ap-northeast-1.txt
echo m4.16xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_m4.16xlarge_ap-northeast-2.txt
echo m4.16xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_m4.16xlarge_ap-northeast-3.txt
echo m4.16xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_m4.16xlarge_ap-southeast-1.txt
echo m4.16xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_m4.16xlarge_ap-southeast-2.txt
echo m4.16xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_m4.16xlarge_ap-south-1.txt
echo m4.16xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_m4.16xlarge_me-south-1.txt
echo m4.16xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types m4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_m4.16xlarge_sa-east-1.txt
echo p2.xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_p2.xlarge_us-east-1.txt
echo p2.xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_p2.xlarge_us-east-2.txt
echo p2.xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_p2.xlarge_us-west-1.txt
echo p2.xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_p2.xlarge_us-west-2.txt
echo p2.xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_p2.xlarge_ca-central-1.txt
echo p2.xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_p2.xlarge_eu-central-1.txt
echo p2.xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_p2.xlarge_eu-west-1.txt
echo p2.xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_p2.xlarge_eu-west-2.txt
echo p2.xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_p2.xlarge_eu-west-3.txt
echo p2.xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_p2.xlarge_eu-north-1.txt
echo p2.xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_p2.xlarge_ap-east-1.txt
echo p2.xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_p2.xlarge_ap-northeast-1.txt
echo p2.xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_p2.xlarge_ap-northeast-2.txt
echo p2.xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_p2.xlarge_ap-northeast-3.txt
echo p2.xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_p2.xlarge_ap-southeast-1.txt
echo p2.xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_p2.xlarge_ap-southeast-2.txt
echo p2.xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_p2.xlarge_ap-south-1.txt
echo p2.xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_p2.xlarge_me-south-1.txt
echo p2.xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types p2.xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_p2.xlarge_sa-east-1.txt
echo r4.16xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_r4.16xlarge_us-east-1.txt
echo r4.16xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_r4.16xlarge_us-east-2.txt
echo r4.16xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_r4.16xlarge_us-west-1.txt
echo r4.16xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_r4.16xlarge_us-west-2.txt
echo r4.16xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_r4.16xlarge_ca-central-1.txt
echo r4.16xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_r4.16xlarge_eu-central-1.txt
echo r4.16xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_r4.16xlarge_eu-west-1.txt
echo r4.16xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_r4.16xlarge_eu-west-2.txt
echo r4.16xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_r4.16xlarge_eu-west-3.txt
echo r4.16xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_r4.16xlarge_eu-north-1.txt
echo r4.16xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_r4.16xlarge_ap-east-1.txt
echo r4.16xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_r4.16xlarge_ap-northeast-1.txt
echo r4.16xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_r4.16xlarge_ap-northeast-2.txt
echo r4.16xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_r4.16xlarge_ap-northeast-3.txt
echo r4.16xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_r4.16xlarge_ap-southeast-1.txt
echo r4.16xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_r4.16xlarge_ap-southeast-2.txt
echo r4.16xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_r4.16xlarge_ap-south-1.txt
echo r4.16xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_r4.16xlarge_me-south-1.txt
echo r4.16xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types r4.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_r4.16xlarge_sa-east-1.txt
echo t2.micro us-east-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_t2.micro_us-east-1.txt
echo t2.micro us-east-2
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_t2.micro_us-east-2.txt
echo t2.micro us-west-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_t2.micro_us-west-1.txt
echo t2.micro us-west-2
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_t2.micro_us-west-2.txt
echo t2.micro ca-central-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_t2.micro_ca-central-1.txt
echo t2.micro eu-central-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_t2.micro_eu-central-1.txt
echo t2.micro eu-west-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_t2.micro_eu-west-1.txt
echo t2.micro eu-west-2
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_t2.micro_eu-west-2.txt
echo t2.micro eu-west-3
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_t2.micro_eu-west-3.txt
echo t2.micro eu-north-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_t2.micro_eu-north-1.txt
echo t2.micro ap-east-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_t2.micro_ap-east-1.txt
echo t2.micro ap-northeast-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_t2.micro_ap-northeast-1.txt
echo t2.micro ap-northeast-2
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_t2.micro_ap-northeast-2.txt
echo t2.micro ap-northeast-3
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_t2.micro_ap-northeast-3.txt
echo t2.micro ap-southeast-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_t2.micro_ap-southeast-1.txt
echo t2.micro ap-southeast-2
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_t2.micro_ap-southeast-2.txt
echo t2.micro ap-south-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_t2.micro_ap-south-1.txt
echo t2.micro me-south-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_t2.micro_me-south-1.txt
echo t2.micro sa-east-1
aws ec2 describe-spot-price-history --instance-types t2.micro --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_t2.micro_sa-east-1.txt
echo x1.16xlarge us-east-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-1 >> c:\Temp\2020-12_x1.16xlarge_us-east-1.txt
echo x1.16xlarge us-east-2
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-east-2 >> c:\Temp\2020-12_x1.16xlarge_us-east-2.txt
echo x1.16xlarge us-west-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-1 >> c:\Temp\2020-12_x1.16xlarge_us-west-1.txt
echo x1.16xlarge us-west-2
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region us-west-2 >> c:\Temp\2020-12_x1.16xlarge_us-west-2.txt
echo x1.16xlarge ca-central-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ca-central-1 >> c:\Temp\2020-12_x1.16xlarge_ca-central-1.txt
echo x1.16xlarge eu-central-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-central-1 >> c:\Temp\2020-12_x1.16xlarge_eu-central-1.txt
echo x1.16xlarge eu-west-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-1 >> c:\Temp\2020-12_x1.16xlarge_eu-west-1.txt
echo x1.16xlarge eu-west-2
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-2 >> c:\Temp\2020-12_x1.16xlarge_eu-west-2.txt
echo x1.16xlarge eu-west-3
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-west-3 >> c:\Temp\2020-12_x1.16xlarge_eu-west-3.txt
echo x1.16xlarge eu-north-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region eu-north-1 >> c:\Temp\2020-12_x1.16xlarge_eu-north-1.txt
echo x1.16xlarge ap-east-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-east-1 >> c:\Temp\2020-12_x1.16xlarge_ap-east-1.txt
echo x1.16xlarge ap-northeast-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-1 >> c:\Temp\2020-12_x1.16xlarge_ap-northeast-1.txt
echo x1.16xlarge ap-northeast-2
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-2 >> c:\Temp\2020-12_x1.16xlarge_ap-northeast-2.txt
echo x1.16xlarge ap-northeast-3
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-northeast-3 >> c:\Temp\2020-12_x1.16xlarge_ap-northeast-3.txt
echo x1.16xlarge ap-southeast-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-1 >> c:\Temp\2020-12_x1.16xlarge_ap-southeast-1.txt
echo x1.16xlarge ap-southeast-2
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-southeast-2 >> c:\Temp\2020-12_x1.16xlarge_ap-southeast-2.txt
echo x1.16xlarge ap-south-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region ap-south-1 >> c:\Temp\2020-12_x1.16xlarge_ap-south-1.txt
echo x1.16xlarge me-south-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region me-south-1 >> c:\Temp\2020-12_x1.16xlarge_me-south-1.txt
echo x1.16xlarge sa-east-1
aws ec2 describe-spot-price-history --instance-types x1.16xlarge --product-description Linux/UNIX --start-time 2020-12-01T00:00:00 --end-time 2020-12-31T23:59:59 --region sa-east-1 >> c:\Temp\2020-12_x1.16xlarge_sa-east-1.txt
echo done.
