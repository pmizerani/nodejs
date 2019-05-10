# Grab Ubuntu
FROM ubuntu:18.04

# Install utilities
RUN apt update && apt install -y curl build-essential

# Install node 10
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - &&\
apt install -y nodejs

# Install Yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add - &&\
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list &&\
apt update && apt install yarn
