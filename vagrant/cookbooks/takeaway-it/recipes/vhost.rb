include_recipe "apache2"

web_app "vhost" do
  server_name "www.takeawayit.local"
  server_aliases ["takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/public"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost" do    
  user "root"
  code <<-EOL  
  ln -s /var/www /home/vagrant/www
  EOL
  not_if {File.exists?("/home/vagrant/www")}
end