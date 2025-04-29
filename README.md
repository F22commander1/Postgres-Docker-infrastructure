# Postgres-Docker-infrastructure

Questo progetto  permette di eseguire un'istanza di **PostgreSQL** all'interno di un **container Docker**. È ideale per eseguire operazioni DDL/DML e gestire un database. In pochi passi, avrai il database pronto per essere utilizzato!

## 🚀 **Prerequisiti**
 Assicurati di avere installato:
- **Docker**: [Guida all'installazione di Docker](https://www.docker.com/products/docker-desktop)
- **Docker Compose** (facoltativo, ma utile per automatizzare il setup)
- 

## ⚙️ **Setup del Container PostgreSQL**

1. Costruisci l'immagine Docker:
 docker build -t postgres-docker

2. Esegui il container Docker:
docker run -d --name postgres-container -p 5432:5432 postgres-docker

Questo comando avvierà il container con PostgreSQL in esecuzione sulla porta 5432, accessibile dal tuo host.

3. Esecuzione del Container
Se hai bisogno di avviare il container in modalità interattiva, puoi usare il seguente comando:

docker exec -it postgres-container bash

Questo ti darà l'accesso alla shell del container, dove potrai eseguire comandi PostgreSQL.

4. Verifica lo stato del container:
docker ps

5. Interazione con il Database
Puoi accedere alla shell di PostgreSQL utilizzando il seguente comando:
docker exec -it postgres-container psql -U postgres

2. Creazione di un Database:
Per creare un nuovo database all'interno del container, esegui il comando:

CREATE DATABASE my_database;

### 1. **Avvia il Container PostgreSQL**
