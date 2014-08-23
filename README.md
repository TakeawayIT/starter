starter
=======

This will be an starter pack to facilitate boot-up  and running a lamp environment  with different frameworks pre configured 

LAMP
=====
To copy and boot-up a lamp environment 

```
git clone https://github.com/TakeawayIT/starter.git;
cd starter;
git checkout lamp;
cd vagrant;
vagrant up;
```

Resolve configured domains by adding them to your hosts file
```
192.168.33.10 takeawayit.local
192.168.33.10 www.takeawayit.local
```

LAMP-Zend2
=====
To copy and boot-up a lamp environment including a Zend2 framework with doctrine and zend-dev-tool modules enabled

```
git clone https://github.com/TakeawayIT/starter.git;
cd starter;
git checkout lamp-2;
cd vagrant;
vagrant up;
```

To update the zend2 framework vendors using composer
```
vagrant ssh;
cd /var/www/zend2;
composer update
```

Resolve configured domains by adding them to your hosts file
```
192.168.33.10 takeawayit.local
192.168.33.10 www.takeawayit.local
192.168.33.10 zf2.takeawayit.local
192.168.33.10 zend2.takeawayit.local
```
