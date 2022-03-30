# Postgres Data

##

Connect:

```sh
$ sudo su - postgres psql 
```



```sh
sudo -u postgres pg_dump db > db.sql
sudo -u postgres psql db < db.sql
```

```sh
$ sudo -u postgres pg_dump -Fc mydb > db.dump
$ sudo -u postgres pg_restore -C -d postgres db.dump
```

https://wiki.postgresql.org/wiki/Sample_Databases


https://postgrespro.com/education/demodb
