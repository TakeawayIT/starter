yum_package "php55w" do
  action :install
end

yum_package "php55w-opcache" do
  action :install
end
