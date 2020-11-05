FROM scottyhardy/docker-remote-desktop:latest

RUN apt update; apt install -y curl
RUN curl -o /tmp/pwd.list https://raw.githubusercontent.com/danielmiessler/SecLists/master/Passwords/Common-Credentials/10-million-password-list-top-1000.txt

# Create the user account
RUN groupadd --gid 1020 ubuntu
RUN useradd --shell /bin/bash --uid 1020 --gid 1020 --password $(openssl passwd ubuntu) --create-home --home-dir /home/ubuntu ubuntu
RUN PASS=$(cat /tmp/pwd.list | shuf -n 1) USERNAME=ubuntu sh -c 'echo "$PASS\n$PASS" | passwd $USERNAME'
RUN rm /tmp/pwd.list
COPY entrypoint.sh /usr/bin/entrypoint
ENTRYPOINT ["/usr/bin/entrypoint"]
