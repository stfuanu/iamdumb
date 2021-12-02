# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
aws --version

aws s3api list-buckets --query "Buckets[].Name"
