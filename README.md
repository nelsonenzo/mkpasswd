## encrypts passwords with sha-512, sha-256, or md5
requirements: 
 - docker

### default method is sha-512
```
 docker run -e PASSWORD=mypassword nelsonenzo/mkpasswd
```
### md5 and sha-256 work also
```
 docker run -e PASSWORD=mypassword -e METHOD=sha-256 nelsonenzo/mkpasswd 
 docker run -e PASSWORD=mypassword -e METHOD=md5 nelsonenzo/mkpasswd 
```

### building the docker container locally, if one desires
```
docker build . -t local/mkpasswd:latest
```