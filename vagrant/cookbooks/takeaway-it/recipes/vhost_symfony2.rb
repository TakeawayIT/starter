include_recipe "apache2"

web_app "vhost_symfony2" do
  server_name "symfony.takeawayit.local"
  server_aliases ["symfony2.takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/symfony2/web"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost_symfony2" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/symfony2 /home/vagrant/symfony2
  EOL
  not_if {File.exists?("/home/vagrant/symfony2")}
end