# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  params = ENV["PARAMS"].split(",")
  config.vm.box = "ubuntu1404"
  config.vm.network :forwarded_port, guest: 22, host: params[0].to_i
  config.vm.provision :shell, :path => "bootstrap.sh", :args => params[1].to_s + " " + params[2].to_s
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.ssh.private_key_path = ["#{ENV['HOME']}/.ssh/id_rsa","#{ENV['HOME']}/.vagrant.d/insecure_private_key"]
  #config.ssh.username = "vagrant"
  #config.ssh.password = "vagrant"
  #config.ssh.guest_port = params[0].to_i
  config.vm.synced_folder "", "/vagrant", disabled: true
  config.vm.provider "virtualbox" do |vb|
   vb.customize ["modifyvm", :id, "--memory", "256"]
   vb.customize ["modifyvm", :id, "--cpus", "2"]
   vb.gui = false
  end
end
