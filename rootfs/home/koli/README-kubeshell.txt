NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)
cat - <<EOF

Welcome to Koli Kube Shell [beta], a tool for managing resources hosted on Koli Platform!
This pod comes pre-installed with $(echo -e "\e[1;37mkubectl\e[0m") and other popular developer tools.

Type $(echo -e "\e[2;40mkubectl --help\e[0m") to get help on using Kubernetes CLI. For more information, visit
$(echo -e "\e[4;37mhttps://docs.koli.com.br/guides/cli.html\e[0m")

Your default namespace is $(echo -e "\e[1;37m$NAMESPACE\e[0m") and will be used as prefix on kubectl.

Type "help" to see this message any time.

EOF
