rm -rf pki
easyrsa init-pki
easyrsa build-ca
cp pki/ca.crt .
cp pki/private/ca.key .
openssl req -new -newkey rsa:2048 -nodes -keyout server.key -out server.csr -config openssl-localdocker.cnf

openssl req -in server.csr -noout -text

openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365 -extensions req_ext -extfile openssl-localdocker.cnf

openssl x509 -in server.crt -noout -text

cp server.crt server_cert.pem
cp ca.crt ca.pem
cp server.key server_key.pem

openssl x509 -in server.crt -out server_cert.pem -inform DER -outform PEM || true
openssl x509 -in ca.crt -out ca.pem -inform DER -outform PEM || true
openssl rsa -in server.key -out server_key.pem -inform DER -outform PEM || true

cat server_cert.pem server_key.pem ca.pem > server_combined.pem

cp *.pem certs/
cp *.crt cert/
cp ca.crt docker/ca.crt

