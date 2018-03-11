## Use mkpasswd utility to encrypt passwords with sha-512, sha-256, or md5
requirements: 
 - docker

benefits:
 - os agnostic
 - consistent method for input and output

### Default method is sha-512
```
 docker run -e PASSWORD=mypassword nelsonenzo/mkpasswd
```
### Md5 and sha-256 work also
```
 docker run -e PASSWORD=mypassword -e METHOD=sha-256 nelsonenzo/mkpasswd 
 docker run -e PASSWORD=mypassword -e METHOD=md5 nelsonenzo/mkpasswd 
```

### Building the docker container locally, if one desires
```
docker build . -t local/mkpasswd:latest
```

### encrypting for a user
- clone repository
- add your gpg public key to gpg_pub directory
- add RUN command in Dockerfile to import gpg key
```
## you can send me gpg encrypted messages if you like:

docker run --rm -it \
  -e user=nelson \
  -e filename=secrets.txt \
  -v "$PWD":/usr/src/secrets/ \
  nelsonenzo/mkpasswd:latest
```
