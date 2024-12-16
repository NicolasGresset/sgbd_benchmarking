# Lauching the project

Make the run script executable :

```bash
chmod +x run.sh
```

Execute it

```bash
./run.sh
```

Access your browser on [http://localhost:8888](http://localhost:8888) and select the notebook.

# Choices

## SGBD

We choose the [Cassandra](https://cassandra.apache.org/_/index.html) database to study its performance on CRUD (Create Read Update Delete) operations compared to a traditional relational database. Cassandra is a highly scalable, distributed NoSQL database designed to handle large amounts of data across many servers, ensuring high availability with no single point of failure. It uses a masterless, peer-to-peer architecture, allowing data to be replicated across multiple nodes for fault tolerance.

The relational database chosen for comparison is [PostgreSQL](https://www.postgresql.org/). We selected PostgreSQL because it is a very popular relational database system.

## Dataset

### Description

We chose a dataset entirely generated with random values to study the effectivness of each SGBD system. The following columns are present : 

The following parameters are provided : 

```csv
BITCOIN_ADDRESS,ACCOUNT,IP_ADDRESS,COUNTY,COUNTRY_CODE,DATABASE_COLUMN_TYPE
1OQ14C4S8ZMMO4LD11QF35CKQZ8EJJK7,08415386,136.89.5.206,Buckinghamshire,BT,float
37VGCMC9YJ3UAZO4ANQ0YYQI8TJU0PTE,30230051,234.179.101.214,Avon,MN,point
381SGK9O2DMV89FE3FP2E6VM6QY0YQEIF,04667519,45.176.70.28,Avon,BN,int
10EGGHJPUQ1J7APTHPVE3BO201DL7KHJ,51905291,213.184.78.252,Cambridgeshire,NU,serial
1DGU5UUZ1RSX5AKJ46FA0T44TT555JP53A,71473205,1.59.225.202,Bedfordshire,MK,varchar
300NCMNKJI59EJKTA6DZBAPZ9S38,34728876,198.118.225.219,Bedfordshire,VE,blob
1BKJ4TRG3TAQR4IWKGBVIUQYDYZ1JF4H4A,96831761,197.210.251.120,Borders,LT,timestamp
3I45T2XDCU18ITVLQLDZ7H7CWLJE,89281769,138.133.0.210,Bedfordshire,VU,varchar
30HALR24D2FFKJS54J9Q74NODCPDI0X,17555573,221.103.117.148,Cambridgeshire,MT,varchar
```

There are 100.001 entries in the database, for a total of 7.7 Mbytes.

Some columns (e.g BITCOIN_ADDRESS) are completely random and will be used as primary key by the SQL database. Others (e.g DATABASE_COLUMN_TYPE or COUNTRy_CODE) are random values from a limited subset of possible entries and we will use them to study the benefits of indexation.


