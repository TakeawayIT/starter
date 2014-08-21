# Name of the role should match the name of the file
name "lamp"

override_attributes(
    "apache" => {                
        "contact" => 'abn@webit4.me',
        "listen_ports" => ["80", "443"], 
        "default_site_enabled" => true,        
        "status_allow_list" => 'all',       
        "ext_status" => true,
        "info_allow_list" => 'all',
        #{}"sysconfig_additional_params" =>,        
    },
    "mysql" => {        
        "server_root_password" => 'pass',                        
    }
)

# Run list function we mentioned earlier
run_list(             
    "recipe[build-essential]",    
    "recipe[apache2]",    
    "recipe[apache2::mod_info]",    
    "recipe[mysql::server]",
    "recipe[mysql::client]",
    "recipe[takeaway-it::db]",         
    "recipe[yum-webtatic]",
    "recipe[takeaway-it::php]",
    "recipe[apache2::mod_php5]",    
    "recipe[takeaway-it::vhost]"
)
