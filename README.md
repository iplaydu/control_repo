# control_repo

NOTES ---

Vagrantfile

--------- start contents ---------


CPUS="1"
MEMORY="1024"
Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.hostname = "master.puppet.vm"
  config.vm.provider "virtualbox" do |v|
    v.name = "master.puppet.vm"
    v.memory = MEMORY
    v.cpus = CPUS
  end
end


--------- end contents ---------

vagrant run
vagrant ssh

sudo su -

rpm -Uvh https://yum.puppet.com/puppet6-release-el-7.noarch.rpm
 = 512 megs
yum install -y puppetserver nano vim  git

/etc/sysconfig/puppetserver

JAVA_ARGS="-Xms2g -Xmx2g = 2 gigs //JAVA_ARGS="-Xms512 -Xmx512m

systemctl start puppetserver
systemctl status puppetserver

systemctl enable puppetserver

/etc/puppetlabs/puppet/puppet.conf


*** add to puppet.con

[agent]
Server = master.puppet.vm

*** end add

*** add to ~ .bash_profile give access to ruby and gems locally

PATH=$PATH:/opt/puppetlabs/puppet/bin

*** end

Exec bash => to get access to files
Source .bash_profile

gem install r10k => gem tool deploy puppet code grom git hub to server

Puppet agent -t

Puppet -> git make branch production cannot use main the set default branch to production
![image](https://user-images.githubusercontent.com/1020280/189948698-36bbb87c-5267-47f1-afe0-2e3c3c2282fe.png)
