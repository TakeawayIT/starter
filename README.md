LAMP (with Kohana)
=====
This branch will provide you with a basic LAMP environemtn 

Component            | Version
-------------------- | --------------------
Linux                | CentOS release 6.5
Apache               | 2.2.15
MySql                | 5.1.73
PHP                  | 5.5.15
Kohana               | 3.3.2

##Installation 

To copy and boot-up the LAMP environment you need to:

1. Clone/copy the "starter" repository
2. Checkout the "lamp" branch and update submodules 
3. Boot-up the virtualBox using Vagrant

```
# 1.
git clone --recurse-submodules https://github.com/TakeawayIT/starter.git;
# 2.
cd starter;
git checkout lamp-kohana332;
git submodule init;
git submodule update;
# 3.
cd vagrant;
vagrant up;
```

##Resolve domains/sub-domains 
Last but not least you need to resolve configured domain & subdomains by adding them to your hosts file.
```
192.168.33.10 kohana332.takeawayit.local
192.168.33.10 kohana.takeawayit.local
192.168.33.10 takeawayit.local
```
