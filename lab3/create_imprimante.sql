CREATE TABLE imprimante(
cod INT IDENTITY(1, 1) PRIMARY KEY,
model INT DEFAULT 9999,
color BIT DEFAULT 0,
tip VARCHAR(16) DEFAULT 'Jet',
pret int DEFAULT 300
);