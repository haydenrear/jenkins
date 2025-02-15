FROM docker:27.4.0-dind
COPY ./ca.crt /usr/local/share/ca-certificates
COPY ./ca.crt /usr/share/ca-certificates
RUN update-ca-certificates
RUN chmod 777 /usr/local/bin/e.sh
ENTRYPOINT ["dockerd-entrypoint.sh"]
CMD []