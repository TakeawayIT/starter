#
# Cookbook Name:: takeaway-it
# Recipe:: laravel
#
# Copyright 2014, Takeaway IT Ltd.
#
# All rights reserved - Do Not Redistribute
#

bash "install_cakephp_installer" do  
  user "root"  
  code <<-EOL  
  pear channel-discover pear.cakephp.org
  pear install cakephp/CakePHP
  EOL
  not_if { ::File.exists?("/usr/bin/cake") }
end