include_recipe "apache2"

web_app "presentation-layer" do
  server_name "www.boticca.local"
  server_aliases ["boticca.local"]
  allow_override "all"  
  docroot "/www/public"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_presentation-layer" do    
  user "root"
  code <<-EOL  
  ln -s /www /home/vagrant/www
  EOL
  not_if {File.exists?("/home/vagrant/www")}
end