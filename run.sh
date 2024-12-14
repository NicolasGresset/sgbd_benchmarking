#!/bin/bash
if ! (test -f "data/trees_strasbourg.csv"); then
    mkdir -p data/
    wget "https://data.strasbourg.eu/api/explore/v2.1/catalog/datasets/patrimoine_arbore/exports/csv?lang=fr&timezone=Europe%2FBerlin&use_labels=true&delimiter=%3B" -O data/trees_strasbourg.csv
    cut -d';' -f3- data/trees_strasbourg.csv > data/trees.csv
    rm data/trees_strasbourg.csv
fi

docker compose up --build -d
