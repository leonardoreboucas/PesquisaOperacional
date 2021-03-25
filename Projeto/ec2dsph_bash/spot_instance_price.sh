pdesc=Linux/UNIX
stime=2021-03-13T00:00:00
etime=2021-03-13T23:59:59
region=us-east-1
dpath=../results
mkdir -p $dpath
typeListJson=$(aws ec2 describe-instance-types)
typeList=$(echo $typeListJson | jq '.InstanceTypes[].InstanceType' | sed -e 's/"//g')
for itype in ${typeList}; do
    echo $typeListJson | jq '.InstanceTypes[] | select(.InstanceType=="'${itype}'")' > $dpath/$itype
    sed -i '$ d' $dpath/$itype
    echo ",\"price\": $(aws ec2 describe-spot-price-history --instance-types $itype --product-description $pdesc --start-time $stime --end-time $etime --region $region | jq  '.SpotPriceHistory[0]') }"  >> $dpath/$itype
done