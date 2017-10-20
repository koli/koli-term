NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)
cat - <<EOF

Bem vindo ao Koli Kube Shell [beta], uma ferramenta para gerenciar recursos hospedados na plataform Koli!
Este pod contém o "kubectl" e outras ferramentas populares utilizadas por desenvolvedores.

Digite "kubectl --help" para obter ajuda usando a interface de linha de comando do Kubernetes.
Para obter mais informações, visite
$(echo -e "\e[4;37mhttps://docs.koli.com.br/guides/cli.html\e[0m")

Seu namespace padrão é $(echo -e "\e[2;40m$NAMESPACE\e[0m"), e será utilizado como prefixo para o "kubectl".

Digite "ajuda" para ver essa mensagem a qualquer momento.

EOF
