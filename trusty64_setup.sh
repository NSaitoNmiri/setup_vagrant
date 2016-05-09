#!/usr/bin/env bash
mkdir trusty64; cd trusty64
vagrant init ubuntu/trusty64
vagrant up
cat << EOS > bootstrap.sh
#!/usr/bin/env bash
apt-get update
apt-get install -y docker.io
EOS
chmod +x bootstrap.sh
sed -i -e 's/^end$/  config.vm.provision :shell, path: "bootstrap.sh"\nend/' Vagrantfile
vagrant reload --provision
