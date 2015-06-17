FROM ubuntu:trusty

# Get up to date, install the bare necessities
RUN DEBIAN_FRONTEND=noninteractive sh -c '( \
        apt-get update && \
        apt-get install -y -q curl wget emacs24-nox vim man-db ssh-client bash-completion && \
        apt-get clean && \
        apt-get autoclean \
    )' > /dev/null

# Create "btuser" user
# Let btuser run sudo without a password (dangerous!)
RUN useradd -ms /bin/bash btuser && \
    chown -R btuser /usr/local && \
    echo "btuser	ALL = (ALL) NOPASSWD: ALL" >> /etc/sudoers

# Set up some semblance of an environment
WORKDIR /home/btuser
ENV HOME /home/btuser
USER btuser

# Default to a login shell
CMD ["/bin/bash", "--login"]
