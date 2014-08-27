include_recipe "apache2"

web_app "vhost_cakephp25" do
  server_name "cakephp25.takeawayit.local"
  server_aliases ["cakephp.takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/cakephp25/webroot"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost_cakephp25" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/cakephp25 /home/vagrant/cakephp25
  EOL
  not_if {File.exists?("/home/vagrant/cakephp25")}
end