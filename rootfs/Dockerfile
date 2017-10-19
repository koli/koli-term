FROM quay.io/koli/base-os
RUN apt-get update && apt-get install -y \
    vim \
    dnsutils \
    curl \
    iputils-ping \
    strace \
    lsof \
    wget \
    git \
    jq \
    netcat \
    telnet \
    bash-completion \
    && rm -rf /var/lib/apt/lists/*

RUN curl --progress-bar https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
	adduser --system \
            --shell /bin/bash \
            --disabled-password \
            --group koli && \
	cp /root/.bashrc /home/koli && \
    chmod +x /usr/local/bin/kubectl && \
    chown koli: -R /home/koli

USER koli
WORKDIR /home/koli

# kubectl auto complete
RUN echo "source <(kubectl completion bash)" >>  ~/.bashrc
RUN echo ". /etc/bash_completion" >> ~/.bashrc

CMD ["/bin/bash"]
ENTRYPOINT ["/bin/bash", "-i"]
