CREATE DATABASE Inscription;
USE Inscription;

CREATE TABLE Etudiant (
id_etudiant int,
nom_etudiant varchar(50) not null,
prenom_etudiant varchar(50) not null,
mail_etudiant varchar(50) not null,
primary key(id_etudiant)
);

CREATE TABLE Formation (
nom_formation varchar(30),
primary key (nom_formation)
);

CREATE TABLE Postuler (
id_etudiant int,
nom_formation varchar(30),
primary key (id_etudiant, nom_formation),
foreign key (id_etudiant) references Etudiant(id_etudiant),
foreign key (nom_formation) references Formation (nom_formation)
);

INSERT INTO Etudiant (id_etudiant, nom_etudiant, prenom_etudiant, mail_etudiant) values
(1,"Tekin", "Melih", "tekinmelih@gmail.com"),
(2, "Simonet", "Mathéo", "simonetmatheo@gmail.com"),
(3, "Mohamed", "Fahmi", "mohamedfahmi@gmail.com"),
(4, "Nguyen", "Donovan", "nguyendonovan@gmail.com");

INSERT INTO Formation (nom_formation) values
("Prepa ingenieur"),
("Cycle ingenieur"),
("Licence"),
("BTS");

INSERT INTO Inscription (id_etudiant, nom_formation) values
(1, "BTS"),
(2, "BTS"),
(3, "Licence"),
(4, "BTS");

