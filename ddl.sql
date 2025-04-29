 CREATE TABLE assicurazioni (
 codice VARCHAR(20) NOT NULL PRIMARY KEY,
 nome VARCHAR(20) NOT NULL,
 sede VARCHAR(30) NOT NULL
 );
 CREATE TABLE proprietari (
 codice_fiscale VARCHAR(16) NOT NULL PRIMARY KEY,
 nome VARCHAR(20) NOT NULL,
 residenza VARCHAR(15) NOT NULL
 );
 CREATE TABLE auto (
 targa VARCHAR(7) NOT NULL PRIMARY KEY,
 marca VARCHAR(10) NOT NULL,
 cilindrata INT NOT NULL CHECK (cilindrata > 0),
 proprietario VARCHAR(16) NOT NULL,
 assicurazione VARCHAR(20) NOT NULL,
 FOREIGN KEY(proprietario) REFERENCES proprietari(codice_fiscale) ON DELETE CASCADE,
 FOREIGN KEY(assicurazione) REFERENCES assicurazioni(codice) ON DELETE CASCADE
 );
 CREATE TABLE sinistri (
 codice VARCHAR(20) NOT NULL PRIMARY KEY,
 luogo VARCHAR(20) NOT NULL,
 data DATE NOT NULL
 );
 CREATE TABLE autocoinvolte (
 sinistro VARCHAR(20) NOT NULL,
 auto VARCHAR(7) NOT NULL,
 importo_danno INT CHECK (importo_danno >= 0),
 FOREIGN KEY (sinistro) REFERENCES sinistri(codice) ON DELETE CASCADE,
 FOREIGN KEY (auto) REFERENCES auto(targa) ON DELETE CASCADE
 );