USE mydb;
INSERT INTO mydb.classevirtuale (codiceunivoco, nome, Docente_email) VALUES ('CL001', 'Classe A', 'luca.verdi@unina.it');
INSERT INTO mydb.classevirtuale (codiceunivoco, nome, Docente_email) VALUES ('CL002', 'Classe B', 'paolo.ferrari@unina.it');
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('marco.rossi@unina.it', 'Marco', 'Rossi', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('giulia.bianchi@unina.it', 'Giulia', 'Bianchi', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('luca.verdi@unina.it', 'Luca', 'Verdi', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('anna.neri@unina.it', 'Anna', 'Neri', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('paolo.ferrari@unina.it', 'Paolo', 'Ferrari', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('laura.conti@unina.it', 'Laura', 'Conti', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('davide.russo@unina.it', 'Davide', 'Russo', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('chiara.martini@unina.it', 'Chiara', 'Martini', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('andrea.gallo@unina.it', 'Andrea', 'Gallo', 'pass123', 0);
INSERT INTO mydb.docente (email, nome, cognome, password, ruolo) VALUES ('elena.greco@unina.it', 'Elena', 'Greco', 'pass123', 0);
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('alessandro.vitali@unina.it', 'Alessandro', 'Vitali', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('marta.fontana@unina.it', 'Marta', 'Fontana', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('giovanni.riva@unina.it', 'Giovanni', 'Riva', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('sofia.mancini@unina.it', 'Sofia', 'Mancini', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('andrea.fabbri@unina.it', 'Andrea', 'Fabbri', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('chiara.romano@unina.it', 'Chiara', 'Romano', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('matteo.costa@unina.it', 'Matteo', 'Costa', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('elisa.martino@unina.it', 'Elisa', 'Martino', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('lorenzo.deangelis@unina.it', 'Lorenzo', 'De Angelis', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('valentina.mazza@unina.it', 'Valentina', 'Mazza', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('simone.benedetti@unina.it', 'Simone', 'Benedetti', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('federica.pellegrini@unina.it', 'Federica', 'Pellegrini', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('riccardo.rossini@unina.it', 'Riccardo', 'Rossini', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('ilaria.monti@unina.it', 'Ilaria', 'Monti', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('emanuele.bianco@unina.it', 'Emanuele', 'Bianco', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('giulia.moretto@unina.it', 'Giulia', 'Moretto', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('stefano.mazzoni@unina.it', 'Stefano', 'Mazzoni', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('alessia.neroni@unina.it', 'Alessia', 'Neroni', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('fabio.marchi@unina.it', 'Fabio', 'Marchi', 'pass123', TRUE, 'CL002');
INSERT INTO mydb.studente (email, nome, cognome, password, ruolo, ClasseVirtuale_codiceunivoco) VALUES ('serena.bassi@unina.it', 'Serena', 'Bassi', 'pass123', TRUE, 'CL001');
INSERT INTO mydb.task (Titolo, descrizione, punteggioMax, Data, Docente_email) VALUES
('Tema sull’ambiente', 'Scrivere un tema sull’importanza della sostenibilità ambientale.', 30, '2025-06-25', 'luca.verdi@unina.it'),
('Problemi di algebra', 'Risolvi i problemi assegnati nel file allegato.', 30, '2025-06-28task_classevirtuale', 'paolo.ferrari@unina.it');
INSERT INTO mydb.task_classevirtuale (Task_Titolo, ClasseVirtuale_codiceunivoco) VALUES
('Tema sull’ambiente', 'CL001'),
('Problemi di algebra', 'CL002');
INSERT INTO mydb.soluzione (testo, punteggio, Data, Studente_email, Task_Titolo, Consegnato) VALUES
('Ho scritto un tema approfondito sull’inquinamento e le energie rinnovabili.', 9, '2025-06-26', 'alessandro.vitali@unina.it', 'Tema sull’ambiente', 1),
('Il mio tema tratta il cambiamento climatico e le sue conseguenze.', 8, '2025-06-27', 'giovanni.riva@unina.it', 'Tema sull’ambiente', 1),
('Ho parlato dell’importanza del riciclo e della riduzione dei rifiuti.', 10, '2025-06-28', 'andrea.fabbri@unina.it', 'Tema sull’ambiente', 1),
('Tema incentrato sulla deforestazione e la biodiversità.', 9, '2025-06-29', 'matteo.costa@unina.it', 'Tema sull’ambiente', 1),
('Ho discusso l’impatto ambientale dei trasporti.', 8, '2025-06-30', 'lorenzo.deangelis@unina.it', 'Tema sull’ambiente', 1),
('Tema sulla sostenibilità urbana e le smart cities.', 9, '2025-07-01', 'valentina.mazza@unina.it', 'Tema sull’ambiente', 1),
('Ho trattato il tema dell’acqua come risorsa preziosa.', 7, '2025-07-02', 'riccardo.rossini@unina.it', 'Tema sull’ambiente', 1),
('Il mio elaborato parla di educazione ambientale nelle scuole.', 8, '2025-07-03', 'emanuele.bianco@unina.it', 'Tema sull’ambiente', 1),
('Ho scritto sull’impatto ambientale dell’industria della moda.', 9, '2025-07-04', 'alessia.neroni@unina.it', 'Tema sull’ambiente', 1),
('Tema sull’energia solare e le sue applicazioni.', 10, '2025-07-05', 'serena.bassi@unina.it', 'Tema sull’ambiente', 1);
INSERT INTO mydb.soluzione (testo, punteggio, Data, Studente_email, Task_Titolo, Consegnato) VALUES
('Ho risolto tutti i problemi con spiegazioni dettagliate.', 10, '2025-06-26', 'marta.fontana@unina.it', 'Problemi di algebra', 1),
('Tutti i problemi sono stati risolti correttamente.', 9, '2025-06-27', 'sofia.mancini@unina.it', 'Problemi di algebra', 1),
('Ho avuto difficoltà con l’ultimo esercizio, ma il resto è corretto.', 8, '2025-06-28', 'chiara.romano@unina.it', 'Problemi di algebra', 1),
('Soluzione completa con passaggi ben spiegati.', 9, '2025-06-29', 'elisa.martino@unina.it', 'Problemi di algebra', 1),
('Tutti i passaggi sono stati svolti con attenzione.', 10, '2025-06-30', 'simone.benedetti@unina.it', 'Problemi di algebra', 1),
('Ho risolto i problemi con l’uso di formule algebriche avanzate.', 9, '2025-07-01', 'federica.pellegrini@unina.it', 'Problemi di algebra', 1),
('Ho svolto gli esercizi con esempi pratici.', 8, '2025-07-02', 'ilaria.monti@unina.it', 'Problemi di algebra', 1),
('Tutti i problemi sono stati risolti correttamente e verificati.', 10, '2025-07-03', 'giulia.moretto@unina.it', 'Problemi di algebra', 1),
('Ho spiegato ogni passaggio con commenti.', 9, '2025-07-04', 'stefano.mazzoni@unina.it', 'Problemi di algebra', 1),
('Soluzione completa con grafici di supporto.', 10, '2025-07-05', 'fabio.marchi@unina.it', 'Problemi di algebra', 1);