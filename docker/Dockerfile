FROM docker:27.4.0-dind
# Needed to pull docker containers from registry from Jenkins if self-signed
COPY ./ca.crt /usr/local/share/ca-certificates
COPY ./ca.crt /usr/share/ca-certificates
RUN update-ca-certificates
ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []