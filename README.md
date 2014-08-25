starter
=======

This will be an starter pack to facilitate boot-up  and running a lamp environment  with different frameworks pre configured 

LAMP
=====
To copy and boot-up a lamp environment 

```
git clone --recurse-submodules https://github.com/TakeawayIT/starter.git;
cd starter;
git checkout lamp;
git submodule init;
git submodule update;
cd vagrant;
vagrant up;
```

Resolve configured domains by adding them to your hosts file
```
192.168.33.10 www.takeawayit.local
192.168.33.10 starter.takeawayit.local
192.168.33.10 takeawayit.local
```
