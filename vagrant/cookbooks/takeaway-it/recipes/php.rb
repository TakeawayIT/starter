#
# Cookbook Name:: takeaway-it
# Recipe:: php
#
# Copyright 2014, Takeaway IT Ltd.
#
# All rights reserved - Do Not Redistribute
#


bash "install_composer" do
  user "root"
  code <<-EOL  
  curl -sS https://getcomposer.org/installer | php
  mv composer.phar /usr/local/bin/composer
  EOL
end

yum_package "php55w" do
  action :install
end

yum_package "php55w-common" do
  action :install
end

yum_package "php55w-devel" do
  action :install
end

yum_package "php55w-gd" do
  action :install
end

yum_package "php55w-opcache" do
  action :install
end

yum_package "php55w-mbstring" do
  action :install
end

yum_package "php55w-mcrypt" do
  action :install
end

yum_package "php55w-mysql" do
  action :install
end

yum_package "php55w-pecl-xdebug" do
  action :install
end

yum_package "php55w-xml" do
  action :install
end

yum_package "php55w-xmlrpc" do
  action :install
end

status_file = "/path/to/file/status_file"

file "/etc/php.d/common.ini" do
  owner "root"
  group "root"
  mode "0600"
  content "error_reporting = E_ALL\ndisplay_errors = On \nphar.readonly = 0  \ndate.timezone = Europe/London \n"
end