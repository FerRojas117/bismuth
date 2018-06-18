# CentOS VM - PostgreSQL 10

In a CentOS VM must open the 5432 port:

`$ sudo firewall-cmd --zone=public --add-port=5432/tcp --permanent`

`$ sudo firewall-cmd --reload`

Add the line:

`listen_addresses = '*'`

In

`sudo nano /var/lib/pgsql/10/data/postgresql.conf`

Verify the line:

`host    all             all             192.168.1.0/24          trust`

In 

`sudo nano /var/lib/pgsql/10/data/pg_hba.conf`
