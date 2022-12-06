# ssh

- Generate key pair:
```
ssh-keygen
eval "$(ssh-agent)"
ssh-add ~/.ssh/id_rsa
```

- Add pub key to server:
On local machine, get pub key:
```
cat ~/.ssh/id_rsa.pub
```
On remote machine:
```
vim ~/.ssh/authorized_keys
<paste pub key>
chmod 700 ~/.ssh && chmod 600 ~/.ssh/authorized_keys
chown user:user ~/.ssh
```

- Mount a remote filesystem via ssh:
```
sshfs remoteuser@remotehost:/local/mountpoint /remote/dir
```

#ssh #key #cryptography #security

