SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS mydb DEFAULT CHARACTER SET utf8mb3;


CREATE TABLE IF NOT EXISTS mydb.docente (
  email VARCHAR(50) NOT NULL,
  nome VARCHAR(25) DEFAULT NULL,
  cognome VARCHAR(25) DEFAULT NULL,
  password VARCHAR(25) DEFAULT NULL,
  ruolo TINYINT NULL DEFAULT NULL,
  PRIMARY KEY (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS mydb.classevirtuale (
  codiceunivoco VARCHAR(25) NOT NULL,
  nome VARCHAR(25) DEFAULT NULL,
  Docente_email VARCHAR(50) NOT NULL,
  PRIMARY KEY (codiceunivoco),
  INDEX fk_ClasseVirtuale_Docente_idx (Docente_email ASC) VISIBLE,
  CONSTRAINT fk_ClasseVirtuale_Docente
    FOREIGN KEY (Docente_email)
    REFERENCES mydb.docente (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS mydb.studente (
  email VARCHAR(50) NOT NULL,
  nome VARCHAR(25) DEFAULT NULL,
  cognome VARCHAR(25) DEFAULT NULL,
  password VARCHAR(25) DEFAULT NULL,
  ruolo TINYINT DEFAULT NULL,
  ClasseVirtuale_codiceunivoco VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY (email),
  INDEX fk_Studente_ClasseVirtuale_idx (ClasseVirtuale_codiceunivoco ASC) VISIBLE,
  CONSTRAINT fk_Studente_ClasseVirtuale
    FOREIGN KEY (ClasseVirtuale_codiceunivoco)
    REFERENCES mydb.classevirtuale (codiceunivoco)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS mydb.profilopersonale (
  Studente_email VARCHAR(50) NOT NULL,
  punteggioTotale INT DEFAULT 0,
  contMedia INT DEFAULT 0,
  MediaVoti FLOAT DEFAULT 0,
  TaskCompletati INT DEFAULT 0,
  PRIMARY KEY (Studente_email),
  CONSTRAINT fk_ProfiloPersonale_Studente1
    FOREIGN KEY (Studente_email)
    REFERENCES mydb.studente (email)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

CREATE TABLE IF NOT EXISTS mydb.task (
  Titolo VARCHAR(50) NOT NULL,
  descrizione VARCHAR(250) DEFAULT NULL,
  punteggioMax INT DEFAULT NULL,
  Data DATE DEFAULT NULL,
  Docente_email VARCHAR(50) NOT NULL,
  PRIMARY KEY (Titolo),
  INDEX fk_Task_Docente_idx (Docente_email ASC) VISIBLE,
  CONSTRAINT fk_Task_Docente
    FOREIGN KEY (Docente_email)
    REFERENCES mydb.docente (email)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ✅ Nuova tabella ponte per relazione molti-a-molti tra task e classevirtuale
CREATE TABLE IF NOT EXISTS mydb.task_classevirtuale (
  Task_Titolo VARCHAR(50) NOT NULL,
  ClasseVirtuale_codiceunivoco VARCHAR(25) NOT NULL,
  PRIMARY KEY (Task_Titolo, ClasseVirtuale_codiceunivoco),
  INDEX fk_TaskClasseVirtuale_Task_idx (Task_Titolo ASC) VISIBLE,
  INDEX fk_TaskClasseVirtuale_Classe_idx (ClasseVirtuale_codiceunivoco ASC) VISIBLE,
  CONSTRAINT fk_TaskClasseVirtuale_Task
    FOREIGN KEY (Task_Titolo)
    REFERENCES mydb.task (Titolo)
    ON DELETE CASCADE,
  CONSTRAINT fk_TaskClasseVirtuale_Classe
    FOREIGN KEY (ClasseVirtuale_codiceunivoco)
    REFERENCES mydb.classevirtuale (codiceunivoco)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS mydb.soluzione (
  id_soluzione INT AUTO_INCREMENT NOT NULL,
  testo VARCHAR(500) DEFAULT NULL,
  punteggio INT DEFAULT NULL,
  Data DATE DEFAULT NULL,
  Studente_email VARCHAR(50) NOT NULL,
  Task_Titolo VARCHAR(50) NOT NULL,
  Consegnato TINYINT DEFAULT NULL,
  PRIMARY KEY (id_soluzione),
  INDEX fk_Soluzione_Studente1_idx (Studente_email ASC) VISIBLE,
  INDEX fk_Soluzione_Task_idx (Task_Titolo ASC) VISIBLE,
  CONSTRAINT fk_Soluzione_Studente1
    FOREIGN KEY (Studente_email)
    REFERENCES mydb.studente (email),
  CONSTRAINT fk_Soluzione_Task
    FOREIGN KEY (Task_Titolo)
    REFERENCES mydb.task (Titolo)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Restore settings
SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
