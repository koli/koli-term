NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)
cat - <<EOF

Welcome to Koli Kube Shell [beta], a tool for managing resources hosted on Koli Platform!
This pod comes pre-installed with "kubectl" and other popular developer tools.

Type "kubectl --help" to get help on using Kubernetes CLI. For more information, visit
$(echo -e "\e[4;37mhttps://docs.koli.com.br/guides/cli.html\e[0m")

Your default namespace is $(echo -e "\e[2;40m$NAMESPACE\e[0m") and will be used as prefix on kubectl.

Type "help" to see this message any time.

EOF
