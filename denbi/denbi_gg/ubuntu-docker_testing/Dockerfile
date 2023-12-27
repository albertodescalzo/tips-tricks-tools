# Use the official Ubuntu 20.04 image as a base
FROM ubuntu:20.04

# Install necessary system packages and Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip vim git openssh-client && \
    apt-get clean

# Set a working directory (you can choose any directory you like)
WORKDIR /home/ubuntu

# Install Ansible using pip
RUN python3 -m pip install --user ansible
## the executable is stored in /root/.local/bin/

# Clone repository in order to run playbook
RUN git clone "https://github.com/DiltheyLab/graph-genome-workbench.git"

# Set a working directory (you can choose any directory you like)
WORKDIR /home/ubuntu/graph-genome-workbench/denbi_gg 

# By default, start a shell session when the container runs
CMD ["bash"]
