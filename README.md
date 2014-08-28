LAMP (with [CakePHP](http://cakephp.org/))
=====
This branch will provide you with a basic LAMP environment 

Component            | Version
-------------------- | --------------------
Linux                | CentOS release 6.5
Apache               | 2.2.15
MySql                | 5.1.73
PHP                  | 5.5.15
CakePHP              | 2.5

##Installation 

To copy and boot-up the LAMP environment you need to:

1. Clone/copy the "starter" repository
2. Checkout the "lamp" branch and update submodules 
3. Boot-up the virtualBox using Vagrant

```bash
   # 1.
git clone --recurse-submodules https://github.com/TakeawayIT/starter.git;
   # 2.
cd starter;
git checkout lamp-cakephp25;
git submodule init;
git submodule update;
   # 3.
cd vagrant;
vagrant up;
```

##Resolve domains/sub-domains 
Last but not least you need to resolve configured domain & subdomains by adding them to your hosts file.
```
192.168.33.10 cakephp25.takeawayit.local
192.168.33.10 cakephp.takeawayit.local
192.168.33.10 takeawayit.local
```

##Database
This dev-box comes with two database named "takeawayit" & "takeawayit_cakephp"
the user name for both databases is the same as the main db name and the password is the same with a "pass" appended 

DATABASE NAME      | User ID    | Password 
-------------------|------------|---------------
takeawayit         | takeawayit | takeawayitpass
takeawayit_cakephp | takeawayit | takeawayitpass
