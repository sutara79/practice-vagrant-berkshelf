# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'centos65-x86_64-20140116'
  config.vm.network 'private_network', ip: '192.168.33.10'
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true
  config.berkshelf.berksfile_path = './Berksfile'
  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = '../'
    chef.run_list = "recipe[#{File.basename(Dir::pwd)}::default]"
  end
end