echo "--- Started processing on $(date '+%Y-%m-%d %H:%M:%S') ---" >> logs/$1_fetch.log
aws cloudformation describe-stacks --profile $1 >> logs/$1_fetch.log
echo "--- Finished processing on $(date '+%Y-%m-%d %H:%M:%S') --- \n " >> logs/$1_fetch.log