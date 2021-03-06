create database urna;
use urna;

CREATE TABLE tbEleitor (
  ID INT NOT NULL AUTO_INCREMENT,
  NOMEELEITOR VARCHAR(70) NOT NULL,
  CPFELEITOR VARCHAR(14) NOT NULL,
  TITULOELEITOR VARCHAR(45) NOT NULL,
  VOTO INT NOT NULL DEFAULT 0,
  PRIMARY KEY (ID));
  
  CREATE TABLE tbCandidato (
  IDCANDIDATO INT NOT NULL AUTO_INCREMENT,
  NOMECANDIDATO VARCHAR(70) NOT NULL,
  PRIMARY KEY (IDCANDIDATO));
  
  CREATE TABLE tbAdministrador (
  IDADMINISTRADOR INT NOT NULL AUTO_INCREMENT,
  NOMEADMINISTRADOR VARCHAR(45) NOT NULL,
  LOGIN VARCHAR(24) NOT NULL,
  SENHA VARCHAR(16) NOT NULL,
  PRIMARY KEY (IDADMINISTRADOR));
  
  CREATE TABLE tbVoto (
  IDVOTO INT NOT NULL AUTO_INCREMENT,
  VOTO INT NOT NULL,
  APURADO INT NOT NULL DEFAULT 0,
  IDELEITOR INT NOT NULL,
  NUMEROCANDIDATO INT NOT NULL DEFAULT 0,
  PRIMARY KEY (IDVOTO),
  FOREIGN KEY (IDELEITOR) REFERENCES tbEleitor(ID),
  FOREIGN KEY (NUMEROCANDIDATO) REFERENCES tbCandidato(IDCANDIDATO));

INSERT INTO tbAdministrador (NOMEADMINISTRADOR, LOGIN, SENHA) values ("admin", "admin", "admin");
INSERT INTO tbEleitor (NOMEELEITOR, CPFELEITOR, TITULOELEITOR) VALUES ("VINICIUS", "1111111111", "12345678");
INSERT INTO tbEleitor (NOMEELEITOR, CPFELEITOR, TITULOELEITOR) VALUES ("JULIANA", "1234567890", "11111111");
INSERT INTO tbEleitor (NOMEELEITOR, CPFELEITOR, TITULOELEITOR) VALUES ("VINICIUS", "1234567899", "22222222");
INSERT INTO tbCandidato (IDCANDIDATO, NOMECANDIDATO) VALUES (1, "PRESIDENTE SP");
INSERT INTO tbCandidato (IDCANDIDATO, NOMECANDIDATO) VALUES (2, "PRESIDENTE RJ");
INSERT INTO tbCandidato (IDCANDIDATO, NOMECANDIDATO) VALUES (3, "PRESIDENTE MG");
INSERT INTO tbCandidato (IDCANDIDATO, NOMECANDIDATO) VALUES (-1, "BRANCO");
INSERT INTO tbCandidato (IDCANDIDATO, NOMECANDIDATO) VALUES (999, "NULO");