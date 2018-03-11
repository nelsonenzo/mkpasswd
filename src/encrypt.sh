#!/bin/bash

# if --user=nelson and --filename=secrets.txt
if [ -n $user ]
then
  ## create gpg file for a user whos pub key is in gpg_pub && imported via docker file.
  gpg --encrypt --out /usr/src/secrets/$filename.gpg  --trust-model always --recipient $user /usr/src/secrets/$filename 
else
  /usr/bin/mkpasswd -m ${METHOD} ${PASSWORD}
fi
