--
--         Script MySQL.
--


--
-- Table: Administration
--
CREATE TABLE Administration(
        identifiant Varchar (15) NOT NULL ,
        mdp         Varchar (25) NOT NULL
	,CONSTRAINT Administration_PK PRIMARY KEY (identifiant)
) ENGINE =InnoDB;


--
-- Table: Projet
--

CREATE TABLE Projet(
        id_projet   Int (5) Auto_increment  NOT NULL COMMENT "S'autoincremente au fur et a mesure"  ,
        titre       Varchar (50) NOT NULL ,
        desc_courte Varchar (250) NOT NULL ,
        desc_longue Text NOT NULL ,
        icone       Varchar (250) NOT NULL COMMENT "Contient le chemin pour l'image"  ,
        visible     Bool NOT NULL ,
        identifiant Varchar (15) NOT NULL
	,CONSTRAINT Projet_PK PRIMARY KEY (id_projet)

	,CONSTRAINT Projet_Administration_FK FOREIGN KEY (identifiant) REFERENCES Administration(identifiant)
)ENGINE=InnoDB;


--
-- Table: Service
--

CREATE TABLE Service(
        id_service  Int  Auto_increment  NOT NULL ,
        nom         Varchar (25) NOT NULL ,
        description Text NOT NULL
	,CONSTRAINT Service_PK PRIMARY KEY (id_service)
)ENGINE=InnoDB;


--
-- Table: Devis
--
CREATE TABLE Devis(
        id_devis     Int  Auto_increment  NOT NULL ,
        nom_societe  Varchar (25) NOT NULL ,
        mail_societe Varchar (25) NOT NULL ,
        telephone    Int NOT NULL ,
        type_contrat Int NOT NULL COMMENT "Un type de contrat est associe a un numero. Permettra a l'administrateur de faire un tri en fonction de ce qu'il veut voir"  ,
        description  Text NOT NULL ,
        identifiant  Varchar (15) NOT NULL
	,CONSTRAINT Devis_PK PRIMARY KEY (id_devis)

	,CONSTRAINT Devis_Administration_FK FOREIGN KEY (identifiant) REFERENCES Administration(identifiant)
)ENGINE=InnoDB;