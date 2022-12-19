FROM debian:buster

# Install FTP server
RUN apt-get update && \
    apt-get install -y vsftpd

# Create FTP user and set password
RUN useradd -m ftpuser && \
    echo "ftpuser:bleed" | chpasswd

# RUN mkdir -p /var/run/vsftpd/empty
COPY ./conf/ /etc/

# Expose FTP port
EXPOSE 21

CMD ["vsftpd"]