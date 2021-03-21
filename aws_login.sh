export AWS_ACCOUNT_ID="269889588377"

# docker build
sam build

aws ecr get-login-password  | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com

# push image to ecr
docker tag helloworldfunction:python3.7-v1 ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com/helloworldfunction:python3.7-v1
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.ap-northeast-1.amazonaws.com/helloworldfunction:python3.7-v1

# deploy
sam deploy --guided

# test
curl https://x79hadruq9.execute-api.ap-northeast-1.amazonaws.com/Prod/hello
