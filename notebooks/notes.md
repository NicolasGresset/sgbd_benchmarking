# notes

pitfall auxquels il faut faire attention :

temps d'une requete doit être sensiblement plus grand que la précision de mesure de temps du système -> utiliser time.perf_counter

est ce que l'appel à une fonction d'API insert retourne de manière asynchrone ou retourne quand l'insertion s'est terminée ? -> par défaut, la fonction retourne quand l'opération termine ; bien qu'on puisse également faire des requêtes asynchrones.

libérer la mémoire avant chaque insertion -> utiliser le module gc de python et faire gc.collect() avant chaque opération

s'intéresser aux 99 centiles pour la latence

utiliser le module statitics pour faire des moyennes et des écarts types


sample code : 

```python
import gc
import time

def benchmark():
    gc.collect()  # Nettoie la mémoire avant de désactiver le GC
    start_time = time.perf_counter()
    # Code à mesurer
    end_time = time.perf_counter()
    return end_time - start_time
```

