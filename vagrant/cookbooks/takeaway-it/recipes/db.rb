#
# Cookbook Name:: ./boticca
# Recipe:: db
#
# Copyright 2014, Takeaway IT Ltd.
#
# All rights reserved - Do Not Redistribute
#

bash 'setup_phalconphp_db' do
  user "root"
  code <<-EOL
  service mysqld restart
  mysql -u root -pabn -e "CREATE SCHEMA boticca DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -pabn -e "GRANT ALL ON boticca.* TO 'boticca'@'localhost' IDENTIFIED BY 'boticcapass'";

  mysql -u root -pabn -e "CREATE SCHEMA boticca_dev DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -pabn -e "GRANT ALL ON boticca_dev.* TO 'boticca_dev'@'localhost' IDENTIFIED BY 'boticcapass'";

  mysql -u root -pabn -e "CREATE SCHEMA boticca_test DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -pabn -e "GRANT ALL ON boticca_test.* TO 'boticca_test'@'localhost' IDENTIFIED BY 'boticcapass'";

  mysql -u root -pabn -e "CREATE SCHEMA boticca_ci DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci";
  mysql -u root -pabn -e "GRANT ALL ON boticca_ci.* TO 'boticca_ci'@'localhost' IDENTIFIED BY 'boticcapass'";

  EOL
end

