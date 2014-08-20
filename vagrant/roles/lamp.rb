# Name of the role should match the name of the file
name "lamp"

override_attributes(
    "apache" => {        
        "contact" => 'abn@webit4.me',
        "listen_ports" => ["80", "443"],
        "default_modules" => ["status","info","ssl","php5"]
    },
    "mysql" => {        
        "server_root_password" => 'pass',                        
    }
)

# Run list function we mentioned earlier
run_list(         
    "recipe[apache2]",    
    "recipe[mysql::server]",
    "recipe[mysql::client]"
)
