install:
	brew install mkcert
	brew install nss
	mkcert -install

generate:
	rm -f certs/*.pem
	mkcert -cert-file certs/local-cert.pem -key-file certs/local-key.pem "*.docker.localhost"

