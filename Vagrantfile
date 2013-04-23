Vagrant::Config.run do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Uncomment to make your vm a bit more powerful
  #config.vm.customize ["modifyvm", :id, "--cpus", 2]
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.forward_port 3000, 3000
  config.vm.forward_port 8080, 8080

  config.vm.provision :chef_solo do |chef|
  	chef.cookbooks_path =  'chef-cookbooks'

  	chef.add_recipe 'apt'
  	chef.add_recipe 'default'
  	chef.add_recipe 'rvm::vagrant'
  	chef.add_recipe 'rvm::system'

  	chef.json = {

  		'rvm' => {
  			'version' => '1.17.10',
  			'rubies'       => ['1.9.3'],
  			'default_ruby' => '1.9.3',
  			'global_gems'  => [
  				{'name'    => 'bundler'},
  				{'name'    => 'rake', 'version' => '0.9.2'}
  			],
  			'vagrant' => {
  				'system_chef_solo' => '/opt/vagrant_ruby/bin/chef-solo'
  			}
  		}
  	}
    end

  config.vm.provision :shell, :inline => 'cd /vagrant && bundle install --without production'
end
