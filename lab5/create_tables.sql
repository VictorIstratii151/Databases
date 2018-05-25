use calculatoare

CREATE TABLE pc_uri(
cod INT PRIMARY KEY NOT NULL,
model INT NOT NULL,
viteza INT NOT NULL,
ram int NOT NULL,
hd int NOT NULL,
cd varchar(5) NOT NULL,
pret int NOT NULL
);


CREATE TABLE laptop_uri(
cod INT PRIMARY KEY NOT NULL,
model INT NOT NULL,
viteza INT NOT NULL,
ram INT NOT NULL,
hd INT NOT NULL,
pret INT NOT NULL,
ecran INT NOT NULL
);

CREATE TABLE imprimante(
cod INT PRIMARY KEY NOT NULL,
model INT NOT NULL,
color BIT NOT NULL,
tip VARCHAR(16) NOT NULL,
pret int NOT NULL
);

CREATE TABLE produse(
producator CHAR(1) NOT NULL,
model VARCHAR(4) NOT NULL,
tip VARCHAR(10) NOT NULL
);