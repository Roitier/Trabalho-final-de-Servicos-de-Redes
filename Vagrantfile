# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/focal64"
    config.vm.synced_folder ".", "/vagrant"
    config.vm.provider "virtualbox" do |vb|
     vb.name = "Teste final"
     vb.memory = "1024"
     vb.cpus   = "2"
    end
    config.vm.provision "shell", path: "atividade.sh"
end
