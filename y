version = 0.1
[y]
[y.deploy]
[y.deploy.parameters]
stack_name = "sam-app"
s3_bucket = "aws-sam-cli-managed-default-samclisourcebucket-4ttmarv49u95"
s3_prefix = "sam-app"
region = "ap-northeast-1"
confirm_changeset = true
capabilities = "CAPABILITY_IAM"
image_repositories = ["HelloWorldFunction=269889588377.dkr.ecr.ap-northeast-1.amazonaws.com/helloworldfunction"]
