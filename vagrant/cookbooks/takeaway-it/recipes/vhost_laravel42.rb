include_recipe "apache2"

web_app "vhost_laravel42" do
  server_name "laravel42.takeawayit.local"
  server_aliases ["laravel.takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/laravel42/public"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost_laravel42" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/laravel42 /home/vagrant/laravel42
  EOL
  not_if {File.exists?("/home/vagrant/laravel42")}
end