echo "--- Started processing on $(date '+%Y-%m-%d %H:%M:%S') ---" >> logs/$2_delete.log
aws cloudformation delete-stack --stack-name $1 --profile $2 >> logs/$2_delete.log
echo "--- Finished processing on $(date '+%Y-%m-%d %H:%M:%S') --- \n " >> logs/$2_delete.log