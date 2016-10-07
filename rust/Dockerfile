from fedora

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y --default-toolchain nightly

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.cargo/bin

RUN dnf groupinstall -y "Development Tools" && dnf install -y gcc-c++ systemd-devel openssl-devel && dnf clean all -y

ADD get_libs.sh /usr/local/bin/
ADD builder.sh /usr/local/bin/

WORKDIR /source

CMD /usr/local/bin/builder.sh
