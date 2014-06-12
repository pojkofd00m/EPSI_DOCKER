# -*- mode: ruby -*-
# # vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "dduportal/boot2docker"

  config.vm.network :forwarded_port, guest: 80, host: 5080, auto_correct: true
  config.vm.network :forwarded_port, guest: 5432, host: 5432, auto_correct: true

end
