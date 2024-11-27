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

We choose the [Couchbase](https://www.couchbase.com/) database to study its performance on CRUD (Create Read Update Delete) operations compared to a traditional relational database. Couchbase is a hybrid NoSQL database that combines key-value and document-oriented models. It is designed to provide high performance, low latency, and horizontal scalability, making it ideal for real-time applications such as analytics, video games, and caching systems.

The relational database chosen for comparison is [PostgreSQL](https://www.postgresql.org/). We selected PostgreSQL because it is a very popular relational database system.

## Dataset

### Description

We choose a dataset provided by the city of Strasbourg in France. It is composed of a description of the trees located in Strasbourg and followed by the municipality.

The following parameters are provided : 

```csv
Geo Point;Geo Shape;num_arbre;genre;si_essence;si_hauteur;si_diametre_fut;si_largeur_couronne
48.514687288, 7.7194018129;"{""coordinates"": [7.7194018129, 48.514687288], ""type"": ""Point""}";115011;Carpinus;Carpinus betulus 'Fastigiata';7;15;6
48.5715810072, 7.7871982065;"{""coordinates"": [7.7871982065, 48.5715810072], ""type"": ""Point""}";116474;Prunus;Prunus avium Plena;5;6;2
```

There are 81511 entries in the database, for a total of 12 Mbytes.

### Retrieve the dataset

Make the script executable :

```bash
chmod +x retrieve_dataset.sh
```

Run it

```bash
./retrieve_dataset.sh
```

