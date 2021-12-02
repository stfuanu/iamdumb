# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
# https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html
# https://www.bluematador.com/learn/aws-cli-cheatsheet
aws --version

# https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
# ----- in .bashrc maybe
# $ export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
# $ export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
# $ export AWS_DEFAULT_REGION=us-west-2

# --------------------------
# https://stackoverflow.com/questions/29908036/passing-access-and-secret-key-aws-cli
# AWS_ACCESS_KEY_ID=ABCD AWS_SECRET_ACCESS_KEY=EF1234 aws ec2 describe-instances
# http://docs.aws.amazon.com/cli/latest/topic/config-vars.html#credentials
# You can set credentials with:

aws configure set aws_access_key_id <yourAccessKey>
aws configure set aws_secret_access_key <yourSecretKey>
# Verify your credentials with:

aws sts get-caller-identity
# For more information on set command:

aws configure set help
# General pattern is:

aws <command> help
aws <command> <subcommand> help
# Note: Before overriding your credentials, you may want to keep a copy of it:

aws configure get aws_access_key_id
aws configure get aws_secret_access_key


# aws s3api list-buckets --query "Buckets[].Name"

