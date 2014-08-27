LAMP (with Frameworks)
=====
This branch will provide you with a LAMP environmentincluding all available frameworks in other branches

Component            | Version
-------------------- | --------------------
Linux                | CentOS release 6.5
Apache               | 2.2.15
MySql                | 5.1.73
PHP                  | 5.5.15
CakePHP              | 2.5
kohana               | 3.3.2
Laravel              | 4.2
Symfony2             | 2
Zend                 | 2.3

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
git checkout lamp-frameworks;
git submodule init;
git submodule update;
   # 3.
cd vagrant;
vagrant up;
```

##Resolve domains/sub-domains 
Last but not least you need to resolve configured domain & subdomains by adding them to your hosts file.
```
192.168.33.10 takeawayit.local
192.168.33.10 www.takeawayit.local
192.168.33.10 starter.takeawayit.local

192.168.33.10 cakephp25.takeawayit.local
192.168.33.10 cakephp.takeawayit.local

192.168.33.10 kohana332.takeawayit.local
192.168.33.10 kohana.takeawayit.local

192.168.33.10 laravel42.takeawayit.local
192.168.33.10 laravel.takeawayit.local

192.168.33.10 phalconphp13.takeawayit.local
192.168.33.10 phalconphp.takeawayit.local
192.168.33.10 phalcon13.takeawayit.local
192.168.33.10 phalcon.takeawayit.local

192.168.33.10 symfony2.takeawayit.local
192.168.33.10 symfony.takeawayit.local

192.168.33.10 zend2.takeawayit.local
192.168.33.10 zend.takeawayit.local
192.168.33.10 zf2.takeawayit.local
192.168.33.10 zf.takeawayit.local
```
