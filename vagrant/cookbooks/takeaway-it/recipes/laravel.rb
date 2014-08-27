#
# Cookbook Name:: takeaway-it
# Recipe:: laravel
#
# Copyright 2014, Takeaway IT Ltd.
#
# All rights reserved - Do Not Redistribute
#

bash "install_laravel_installer" do  
  user "root"
  cwd "/root"
  code <<-EOL  
  composer global require "laravel/installer=~1.1";
  mv -f /root/.composer /home/vagrant/;
  chown vagrant:vagrant -R /home/vagrant/.composer;
  ln -s /home/vagrant/.composer/vendor/bin/laravel /usr/bin/laravel;
  EOL
  not_if { ::File.exists?("/usr/bin/laravel") }
end