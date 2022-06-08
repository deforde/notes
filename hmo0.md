# dh-virtualenv

- Install:
```
sudo apt install build-essential debhelper devscripts equivs
sudo add-apt-repository ppa:jyrki-pulliainen/dh-virtualenv
sudo apt update
sudo apt install dh-virtualenv
```

- Create package:
`( deactivate ; dpkg-buildpackage -us -uc -b )`

#dh-virtualenv #debian #deb #python #packaging

