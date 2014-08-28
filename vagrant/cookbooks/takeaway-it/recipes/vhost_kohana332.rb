include_recipe "apache2"

web_app "vhost_kohana332" do
  server_name "kohana332.takeawayit.local"
  server_aliases ["kohana.takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/kohana332"
  directory_index ["index.html","index.htm","index.php"]
  set_env "KOHANA_ENV DEVELOPMENT"
end

bash "symlink_vhost_kohana332" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/kohana332 /home/vagrant/kohana332
  EOL
  not_if {File.exists?("/home/vagrant/kohana332")}
end