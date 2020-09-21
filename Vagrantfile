# -*- mode: ruby -*-
# vi: set ft=ruby  :

machines = {
  "server20" => {"memory" => "4096", "cpu" => "2", "ip" => "120", "image" => "ubuntu/bionic64","provision" => "manager-leader.sh"},
  "server21" => {"memory" => "4096", "cpu" => "2", "ip" => "121", "image" => "ubuntu/bionic64","provision" => "manager.sh"},
  "server22" => {"memory" => "4096", "cpu" => "2", "ip" => "122", "image" => "ubuntu/bionic64","provision" => "manager.sh"},
  "server23" => {"memory" => "2048", "cpu" => "2", "ip" => "123", "image" => "ubuntu/bionic64","provision" => "worker.sh"},
  "server24" => {"memory" => "2048", "cpu" => "2", "ip" => "124", "image" => "ubuntu/bionic64","provision" => "worker.sh"}
}

Vagrant.configure("2") do |config|
 if Vagrant.has_plugin?("vagrant-timezone")
 config.timezone.value = "America/Sao_Paulo"
 config.vm.box_check_update = false

 machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}.example.com"
      machine.vm.network "private_network", ip: "192.168.200.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
end

      machine.vm.provision "file", source: "/home/amachado/projetos_vagrant/ssh-keys/id_bionic.pub", destination: "/vagrant/"
      machine.vm.provision "shell", inline: "cat /vagrant/id_bionic.pub >> .ssh/authorized_keys"
      machine.vm.provision 'shell', path: 'provision/provision.sh'
      machine.vm.provision 'shell', path: "provision/#{conf['provision']}", args: "#{conf['ip']}"
      end
        end
      end
    end
