kubectl create secret generic docker-user-pass \
    --from-file=.dockerconfigjson=/home/vbobade/.docker/config.json \
    --type=kubernetes.io/dockerconfigjson

kubectl delete -f ./build-bot-serviceaccount.yaml 
kubectl delete -f ./notary-build-pipeline.yaml 
kubectl delete -f ./notary-build-pipelinerun.yaml

kubectl create -f ./build-bot-serviceaccount.yaml 
kubectl create -f ./notary-build-pipeline.yaml 
kubectl create -f ./notary-build-pipelinerun.yaml
