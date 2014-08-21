web_app "vhost_zend2" do
  server_name "zend2.takeawayit.local"
  server_aliases ["zf2.takeawayit.local"]
  allow_override "all"  
  docroot "/var/www/zend2/public"
  directory_index ["index.php"]
  set_env "ENVIRONMENT DEV"
end

bash "symlink_vhost_zend2" do    
  user "root"
  code <<-EOL  
  ln -s /var/www/zend2 /home/vagrant/zend2
  EOL
  not_if {File.exists?("/home/vagrant/zend2")}
end