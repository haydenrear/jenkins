cd ..

#openssl s_client -showcerts -connect localhost:5001 < /dev/null | sed -ne '/-BEGIN CERTIFICATE-/,/-END CERTIFICATE-/p' > ca.crt
#cp ca.crt crts/ca.crt

git daemon --export-all --reuseaddr --base-path=/Users/hayde/IdeaProjects -- /Users/hayde/IdeaProjects/drools &
git daemon --export-all --reuseaddr --base-path=/Users/hayde/IdeaProjects -- /Users/hayde/IdeaProjects/versions-parent --port=9419 &
