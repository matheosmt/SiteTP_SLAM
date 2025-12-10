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
