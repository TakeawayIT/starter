include_recipe "apache2"

web_app "vhost_phalconphp13" do
  server_name "phalconphp13.takeawayit.local"
  server_aliases ["phalconphp.takeawayit.local","phalcon13.takeawayit.local","phalcon.takeawayit.local","takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/phalconphp13/public"
  directory_index ["index.html","index.htm","index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost_phalconphp13" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/phalconphp13 /home/vagrant/phalconphp13
  EOL
  not_if {File.exists?("/home/vagrant/phalconphp13")}
end
