yum_package "php-phpunit-PHPUnit" do
  action :install
end

yum_package "php-phpunit-PHPUnit-SkeletonGenerator" do
  action :install
end

yum_package "php-phpunit-DbUnit" do
  action :install
end

yum_package "php-phpunit-PHPUnit-MockObject" do
  action :install
end

yum_package "php-phpunit-PHPUnit-Selenium" do
  action :install
end

yum_package "php-phpunit-PHPUnit-Story" do
  action :install
end

yum_package "php-phpunit-PHP-CodeCoverage" do
  action :install
end
