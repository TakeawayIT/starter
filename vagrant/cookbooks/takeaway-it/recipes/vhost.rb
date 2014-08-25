include_recipe "apache2"

web_app "vhost" do
  server_name "www.takeawayit.local"
  server_aliases ["starter.takeawayit.local","takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/html"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/html /home/vagrant/html
  EOL
  not_if {File.exists?("/home/vagrant/html")}
end
