#!/bin/bash

echo "Retrieving the database"

wget "https://data.strasbourg.eu/api/explore/v2.1/catalog/datasets/patrimoine_arbore/exports/csv?lang=fr&timezone=Europe%2FBerlin&use_labels=true&delimiter=%3B" -O data/trees_strasbourg.csv