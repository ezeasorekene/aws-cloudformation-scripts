echo "--- Started processing on $(date '+%Y-%m-%d %H:%M:%S') ---" >> logs/$4_create.log
aws cloudformation create-stack --stack-name $1 --template-body file://$2  --parameters file://$3 --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=us-east-1 --profile $4 >> logs/$4_create.log
echo "--- Finished processing on $(date '+%Y-%m-%d %H:%M:%S') --- \n " >> logs/$4_create.log