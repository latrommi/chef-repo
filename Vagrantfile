Vagrant::Config.run do |config|

  config.vm.box = "ubuntu11.10-gems"

  config.vm.network :hostonly, "192.168.0.100"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
    chef.data_bags_path = "data_bags"

    # chef.add_role("rails")
  end

en
