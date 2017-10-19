NAMESPACE=$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)
cat - <<EOF

Bem vindo ao Koli Kube Shell [beta], uma ferramenta para gerenciar recursos hospedados na plataform Koli!
Este pod contém o $(echo -e "\e[1;37mkubectl\e[0m") e outras ferramentas populares utilizadas por desenvolvedores.

Digite $(echo -e "\e[1;37mkubectl --help\e[0m") para obter ajuda usando a interface de linha de comando do Kubernetes.
Para obter mais informações, visite
https://docs.koli.com.br/guides/cli.html

Seu namespace padrão é $(echo -e "\e[1;37m$NAMESPACE\e[0m"), e será utilizado como prefixo para o "kubectl".

Digite "ajuda" para ver essa mensagem a qualquer momento.

EOF
