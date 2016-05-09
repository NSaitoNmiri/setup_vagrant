#!/usr/bin/env bash
mkdir trusty64; cd trusty64
vagrant init ubuntu/trusty64
vagrant up
cat << EOS > bootstrap.sh
#!/usr/bin/env bash
apt-get update
apt-get install -y docker.io
usermod -g docker vagrant
service docker restart
echo Asia/Tokyo > /etc/timezone
dpkg-reconfigure tzdata --frontend noninteractive tzdata
EOS
chmod +x bootstrap.sh
sed -i -e 's/^end$/  config.vm.provision :shell, path: "bootstrap.sh"\
end/' Vagrantfile
vagrant reload --provision
