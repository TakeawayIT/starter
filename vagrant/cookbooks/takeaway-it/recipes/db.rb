#
# Cookbook Name:: ./boticca
# Recipe:: db
#
# Copyright 2014, Takeaway IT Ltd.
#
# All rights reserved - Do Not Redistribute
#

bash 'setup_takeawayit_db' do
  user "root"
  code <<-EOL
  service mysqld restart
  mysql -u root -ppass -e "CREATE SCHEMA IF NOT EXISTS takeawayit DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -ppass -e "GRANT ALL ON takeawayit.* TO 'takeawayit'@'localhost' IDENTIFIED BY 'takeawayitpass'";

  mysql -u root -ppass -e "CREATE SCHEMA IF NOT EXISTS takeawayit_zend2 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -ppass -e "GRANT ALL ON takeawayit_zend2.* TO 'takeawayit'@'localhost' IDENTIFIED BY 'takeawayitpass'";
  EOL
end

