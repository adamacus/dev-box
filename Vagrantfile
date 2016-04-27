# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.provision :shell, path: 'provision.sh' 
  config.vm.provision :shell, path: 'project.sh', privileged: false
  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 1
  end
end

