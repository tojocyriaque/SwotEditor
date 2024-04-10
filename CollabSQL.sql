CREATE TABLE IF NOT EXISTS projets(
	id_projet int primary key AUTO_INCREMENT, 
	nom VARCHAR(200) NOT NULL, note int not NULL,
	type_projet ENUM("P", "G") NOT NULL, -- P: personnel, G: groupe
	creation date DEFAULT GETDATE() -- date de créaton du projet
);

CREATE TABLE IF NOT EXISTS taches(
	id_tache int primary key AUTO_INCREMENT,
	id_projet int not null, 
	nom VARCHAR(200) NOT NULL, note int not NULL,
	creation date DEFAULT GETDATE()
);
