# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "chef/ubuntu-12.04"

  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|
    chef.add_recipe "hgrc::default"

    chef.json = {
      :hgrc => {
        :users => [
          {
            :name => "vagrant",
            :auth => [
              {
                :name => "my-hg",
                :prefix => "my.domain.com",
                :username => "username",
                :password => "password",
                :schemes => "http https"
              }
            ],
            :extensions => %w{record convert}
          }
        ]
      }
    }
  end
end
