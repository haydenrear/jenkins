cd ..

#cp /certs/client/ca.crt /usr/share/ca-certificates/
#update-ca-certificates
#cp /certs/client/ca.crt /usr/share/ca-certificates/
#docker pull host.docker.internal:5001/jdk
#cp /certs/client/ca.crt /usr/local/share/ca-certificates/
#update-ca-certificates
#docker pull host.docker.internal:5001/jdk
#vim /etc/docker/daemon/json
#security add-trusted-cert
#service docker restart
#docker pull host.docker.internal:5001/jdk
#history

git daemon --export-all --reuseaddr --base-path=/Users/hayde/IdeaProjects -- /Users/hayde/IdeaProjects/drools &
git daemon --export-all --reuseaddr --base-path=/Users/hayde/IdeaProjects -- /Users/hayde/IdeaProjects/versions-parent --port=9419 &
