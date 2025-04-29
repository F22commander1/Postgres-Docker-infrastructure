 INSERT INTO assicurazioni (codice, nome, sede) VALUES
 (’001’, ’Reale Mutua’, ’City1’),
 (’002’, ’Aviva’, ’City2’),
 (’003’, ’Allianz’, ’City3’);

 INSERT INTO proprietari (codice_fiscale, nome, residenza) VALUES
 (’ABC1234567890123’, ’Owner1’, ’Residence1’),
 (’DEF4567890123456’, ’Owner2’, ’Residence2’),
 (’GHI7890123456789’, ’Owner3’, ’Residence3’);

 INSERT INTO auto (targa, marca, cilindrata, proprietario, assicurazione) VALUES
 (’ABC1234’, ’Brand1’, 1500, ’ABC1234567890123’, ’001’),
 (’DEF5678’, ’Brand2’, 2000, ’DEF4567890123456’, ’002’),
 (’GHI9012’, ’Brand3’, 1800, ’GHI7890123456789’, ’003’);
 
 INSERT INTO sinistri (codice, luogo, data) VALUES
 (’S001’, ’Location1’, ’2023-01-15’),
 (’S002’, ’Location2’, ’2023-02-20’),
 (’S003’, ’Location3’, ’2023-03-25’);

 INSERT INTO autocoinvolte (sinistro, auto, importo_danno) VALUES
 (’S001’, ’ABC1234’, 1000),
 (’S002’, ’DEF5678’, 1500),
 (’S003’, ’GHI9012’, 2000);