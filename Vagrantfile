Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/jammy64"
  
    config.vm.define "runner" do |m|
      m.vm.network "private_network", ip: "192.168.56.6"
      m.vm.provider "virtualbox" do |vb|
        # Customize the amount of memory on the VM:
        vb.memory = "2048"
      end
      m.vm.provision "shell", privileged: false, inline: "/vagrant/config_runner/install_docker.sh && /vagrant/config_runner/install_runner.sh && /vagrant/config_runner/register_runner.sh"
    end  
end
      