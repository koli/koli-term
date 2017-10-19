kubectl config set-cluster default --server=$KUBERNETES_SERVICE_PROXY_ADDRESS:$KUBERNETES_SERVICE_PROXY_PORT --certificate-authority=/var/run/secrets/kubernetes.io/serviceaccount/ca.crt --embed-certs
kubectl config set-credentials default --token=$JWT_TOKEN
kubectl config set-context default --cluster default --user default
kubectl config use-context default
