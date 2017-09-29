FROM quay.io/koli/base-os
RUN apt-get update && apt-get install -y \
    bash-completion \
    && rm -rf /var/lib/apt/lists/*

ADD https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl


RUN adduser --system \
    --shell /bin/bash \
    --disabled-password \
    --group koli

USER koli

# kubectl auto complete
RUN echo "source <(kubectl completion bash)" >>  ~/.bashrc
RUN echo ". /etc/bash_completion" >> ~/.bashrc

ENTRYPOINT ["/bin/bash"]
