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
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /home/koli

COPY . /
RUN curl --progress-bar https://storage.googleapis.com/kubernetes-release/release/v1.7.6/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
	adduser --system \
            --shell /bin/bash \
            --disabled-password \
            --group koli && \
	cp /root/.bashrc /home/koli && \
    chmod +x /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kube-shell-init.sh && \
    chown koli: -R /home/koli

USER koli
WORKDIR /home/koli

CMD ["/bin/bash"]
ENTRYPOINT ["/bin/bash", "-i"]
