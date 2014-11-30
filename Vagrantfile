# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  params = ENV["PARAMS"].split(",")
  config.vm.box = "ubuntu1404"
  config.vm.network :forwarded_port, guest: 22, host: params[0].to_i
  config.vm.provision :shell, :path => "bootstrap.sh", :args => params[1].to_s + " " + params[2].to_s
  config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
  config.vm.synced_folder "", "", disabled: true
  config.vm.provider "virtualbox" do |v|
    v.memory = 256
#    v.customize 'pre-boot', ['showhdinfo', :id, '--resize', '10240'] # 10 * 1024 MB = 10 GB
  end
end
