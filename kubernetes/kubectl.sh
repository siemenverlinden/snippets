#see all env from project:
kubectl config get-contexts

#pick the one you want:
kubectl config use-context {{ENV_NAME}}

#get namespaces:
kubectl get namespaces

#set namespace:
kubectl config set-context --current --namespace={{NAME_SPACE}}

#get all pods:
kubectl get pods

get mysql pod name
kubectl get pods |grep mysql | cut -d ' ' -f 1

#SSH to a web pod 
kubectl exec -it {{POD_NAME}} -- /bin/bash

#check magento env.php
kubectl describe configmap {{CONFIG_MAP}}

#connect to database
kubectl port-forward mysql-0 33306:3306


#check logs
kubectl get pods   
kubectl logs -c exception-log {{POD_NAME}}   
kubectl logs -c system-log {{POD_NAME}}  
kubectl logs --all-containers=true {{POD_NAME}}

#restart failed deployment
kubectl get pods  #find the name of failed upgrade pod 
kubectl logs -c web {{POD_NAME}} #see the reason for failing
kubectl delete pod {{POD_NAME}} #delete pod so it will be recreated and reruns setup:upgrade

#Change k8s config via git
#recreate the deployment for the pod.  One note though! it should be done when deployment is in running phase. If you do it during upgrading phase, it might not recreate.
