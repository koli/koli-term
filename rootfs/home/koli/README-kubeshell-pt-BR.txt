cat - <<EOF

Bem vindo ao Koli Kube Shell [beta], uma ferramenta para gerenciar recursos hospedados na plataform Koli!
Este pod contém o "kubectl" e outras ferramentas populares utilizadas por desenvolvedores.

Digite "kubectl --help" para obter ajuda usando a interface de linha de comando do Kubernetes.
Para obter mais informações, visite
https://docs.koli.com.br/guides/cli.html

Seu namespace padrão é "$(cat /var/run/secrets/kubernetes.io/serviceaccount/namespace)", e será utilizado como prefixo para o "kubectl".

Digite "ajuda" para ver essa mensagem a qualquer momento.

EOF
