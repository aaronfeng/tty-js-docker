# Install

```
git clone https://github.com/aaronfeng/tty-js-docker.git
```

```
cd tty-js-docker
```

This might take a while.  If you already have an image with docker installed, that would be recommended since this image can take forever to download.  Change the URL to `http://nitron-vagrant.s3-website-us-east-1.amazonaws.com/vagrant_ubuntu_12.04.3_amd64_vmware.box` if you are using VMWare.

```
vagrant box add ubuntu-docker http://nitron-vagrant.s3-website-us-east-1.amazonaws.com/vagrant_ubuntu_12.04.3_amd64_virtualbox.box
```

```
vagrant up && vagrant ssh
```

```
/vagrant/build.sh
```

Run the container (takes a few seconds to boot).

```
sudo docker run -p :7777 tty-js
```

Using your browser on the host machine, go to [localhost:7777](http://localhost:7777)
to see your awesome [tty.js terminal](https://github.com/chjj/tty.js)
