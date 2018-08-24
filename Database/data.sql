insert into COMPAGNIA(NOME)VALUES('Trenitalia');
insert into COMPAGNIA(NOME)VALUES('Italo');


insert into ITINERARI(NOME)VALUES('linea1');
insert into ITINERARI(NOME)VALUES('linea2');
insert into ITINERARI(NOME)VALUES('linea3');


insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(1,'linea1','GENOVA','PAVIA',70,85);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(2,'linea1','PAVIA','MILANO',30,45);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(3,'linea1','MILANO','PARMA',45,65);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(4,'linea1','PARMA','MODENA',85,120);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(5,'linea1','MODENA','ANCONA',140,200);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(6,'linea1','ANCONA','FOGGIA',200,320);



insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(3,'linea2','BOLOGNA','PARMA',60,75);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(4,'linea2','PARMA','BRESCIA',86,115);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(5,'linea2','BRESCIA','COMO',96,125);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(6,'linea2','COMO','TORINO',110,155);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(1,'linea2','PADOVA','MANTOVA',85,105);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(2,'linea2','MANTOVA','BOLOGNA',70,85);

insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(1,'linea3','ROMA','PERUGIA',240,310);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(2,'linea3','PERUGIA','BOLOGNA',125,175);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(3,'linea3','BOLOGNA','MILANO',150,215);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(4,'linea3','MILANO','SIENA',40,55);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(5,'linea3','SIENA','PISA',105,145);
insert into TRATTE(NUMTRATTA,ITINERARI_NOME,STAZIONE1,STAZIONE2,DURATA,LUNGHEZZA)
VALUES(6,'linea3','PISA','SALERNO',300,400);


insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno0','Trenitalia');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno1','Trenitalia');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno2','Trenitalia');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno3','Trenitalia');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno4','Trenitalia');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Trenitalia-Treno5','Trenitalia');


insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno0','Italo');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno1','Italo');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno2','Italo');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno3','Italo');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno4','Italo');
insert into treno(CODTRENO,COMPAGNIA_NOME)VALUES('Italo-Treno5','Italo');

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno0','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno0','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno0','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno0','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno0','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno0','SECONDA_CUCCETTA',16);


insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno1','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno1','PRIMA_CUCCETTA',14);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno1','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno1','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno1','SECONDA_CUCCETTA',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno1','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno2','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno2','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno2','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno2','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno2','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno2','SECONDA_CUCCETTA',18);


insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno0','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno0','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno0','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno0','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Italo-treno0','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno1','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno1','PRIMA_CUCCETTA',14);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno1','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno1','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Italo-treno1','SECONDA_CUCCETTA',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Italo-treno1','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno2','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno2','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno2','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno2','SECONDA_CUCCETTA',18);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno3','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno3','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno3','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno3','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno3','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno3','SECONDA_CUCCETTA',16);


insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno4','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno4','PRIMA_CUCCETTA',14);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno4','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno4','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno4','SECONDA_CUCCETTA',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno4','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Trenitalia-Treno5','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Trenitalia-Treno5','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Trenitalia-Treno5','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Trenitalia-Treno5','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Trenitalia-Treno5','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Trenitalia-Treno5','SECONDA_CUCCETTA',18);


insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno3','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno3','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno3','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno3','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Italo-treno3','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno4','PRIMA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno4','PRIMA_CUCCETTA',14);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno4','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno4','SECONDA_STANDARD',24);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(5,'Italo-treno4','SECONDA_CUCCETTA',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(6,'Italo-treno4','SECONDA_CUCCETTA',16);

insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(1,'Italo-treno5','PRIMA_STANDARD',20);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(2,'Italo-treno5','PRIMA_CUCCETTA',12);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(3,'Italo-treno5','SECONDA_STANDARD',16);
insert into vagone(NUMVAG,CODTRENO,TIPOLOGIA,NUMPOSTI)VALUES(4,'Italo-treno5','SECONDA_CUCCETTA',18);


insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Trenitalia','PRIMA_STANDARD',0.18);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Trenitalia','SECONDA_STANDARD',0.11);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Trenitalia','PRIMA_CUCCETTA',0.22);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Trenitalia','SECONDA_CUCCETTA',0.17);

insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Italo','PRIMA_STANDARD',0.17);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Italo','SECONDA_STANDARD',0.12);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Italo','PRIMA_CUCCETTA',0.20);
insert into PREZZI(COMPAGNIA_NOME,TIPOLOGIA,PREZZO)VALUES('Italo','SECONDA_CUCCETTA',0.18);


insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-0','Italo','Italo-Treno0','linea1','DIRETTA','2018-09-10 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-1','Italo','Italo-Treno1','linea1','INVERSA','2018-09-10 06:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-2','Italo','Italo-Treno2','linea2','DIRETTA','2018-09-10 09:40');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-3','Italo','Italo-Treno4','linea2','INVERSA','2018-09-10 07:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-4','Italo','Italo-Treno5','linea3','DIRETTA','2018-09-10 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-5','Italo','Italo-Treno3','linea3','INVERSA','2018-09-10 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-6','Italo','Italo-Treno0','linea1','DIRETTA','2018-09-11 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-7','Italo','Italo-Treno1','linea1','INVERSA','2018-09-11 06:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-8','Italo','Italo-Treno2','linea2','DIRETTA','2018-09-11 09:40');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-9','Italo','Italo-Treno4','linea2','INVERSA','2018-09-11 07:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-10','Italo','Italo-Treno5','linea3','DIRETTA','2018-09-11 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Italo-12','Italo','Italo-Treno3','linea3','INVERSA','2018-09-11 08:00');


insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-0','Trenitalia','Trenitalia-Treno0','linea1','DIRETTA','2018-09-10 09:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-1','Trenitalia','Trenitalia-Treno1','linea1','INVERSA','2018-09-10 06:15');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-2','Trenitalia','Trenitalia-Treno2','linea2','DIRETTA','2018-09-10 10:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-3','Trenitalia','Trenitalia-Treno3','linea2','INVERSA','2018-09-10 07:30');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-4','Trenitalia','Trenitalia-Treno4','linea3','DIRETTA','2018-09-10 07:30');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-5','Trenitalia','Trenitalia-Treno5','linea3','INVERSA','2018-09-10 08:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-6','Trenitalia','Trenitalia-Treno0','linea1','DIRETTA','2018-09-11 09:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-7','Trenitalia','Trenitalia-Treno1','linea1','INVERSA','2018-09-11 06:15');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-8','Trenitalia','Trenitalia-Treno2','linea2','DIRETTA','2018-09-11 10:00');
insert into viaggio(CODVIAGGIO,COMPAGNIA_NOME,TRENO_CODTRENO,ITINERARI_NOME,MODALITA,DATA_ORA)
values('Trenitalia-9','Trenitalia','Trenitalia-Treno3','linea2','INVERSA','2018-09-11 07:30');