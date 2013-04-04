INSERT INTO auto VALUES ('KE111-XX', 'o', '1-feb-1990');
INSERT INTO auto VALUES ('KE222-XX', 'O', '11-dec-1999');
INSERT INTO auto VALUES ('KE111-YY', 'o', '1-may-1989');
INSERT INTO auto VALUES ('PO111-XX', 'N', '1-feb-1991');
INSERT INTO auto VALUES ('PO333-XX', 'o', '1-may-1990');
INSERT INTO auto VALUES ('NR111-XX', 'p', '12-jun-1998');
INSERT INTO auto VALUES ('ZA111-XX', 'O', '22-nov-1999');
INSERT INTO auto VALUES ('KE111-ZZ', 'n', '1-feb-1991');
INSERT INTO auto VALUES ('KE100-XX', 'P', '1-feb-1992');
commit;

--------------------

INSERT INTO zam VALUES (szam.nextVal, 'Janko', 'Hrasko', null);
INSERT INTO zam VALUES (szam.nextVal, 'Juro', 'Janosik', null);
INSERT INTO zam VALUES (szam.nextVal, 'Adam', 'Sangala', null);
INSERT INTO zam VALUES (szam.nextVal, 'Anicka', 'Dusicka', null);
INSERT INTO zam VALUES (szam.nextVal, 'Peter', 'Vrchny', null);
commit;

--------------

CREATE SEQUENCE ssluzby INCREMENT BY 1 START WITH 1;
commit;
-------------

INSERT INTO sluzba VALUES (ssluzby.nextVal, 'vymena oleja', 55);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'vymena vody', 22.50);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'vymena pneu', 15.50);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'blatniky', 125);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'svetla', 22.50);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'vymena predne sklo', 155);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'prevodovka', 165);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'vysavanie', 8.55);
INSERT INTO sluzba VALUES (ssluzby.nextVal, 'brzdy', 15.55);
commit;

--------------

INSERT INTO asz VALUES ('30-dec-2010', 'KE111-XX', 1/*olej*/, 100/*jh*/);
INSERT INTO asz VALUES ('2-jan-2011', 'KE111-XX', 2/*voda*/, 110/*jj*/);
INSERT INTO asz VALUES ('2-jan-2011', 'KE111-XX', 1/*vysav.*/, 110/*jj*/);
INSERT INTO asz VALUES ('30-dec-2010', 'KE222-XX', 3/*pneu*/, 120/*as*/);
INSERT INTO asz VALUES ('2-jan-2011', 'KE222-XX', 2/*voda*/, 110/*jj*/);
INSERT INTO asz VALUES ('2-jan-2011', 'KE222-XX', 8/*vysav.*/, 110/*jj*/);
INSERT INTO asz VALUES ('3-jan-2011', 'PO111-XX', 2/*voda*/, 110/*jj*/);
INSERT INTO asz VALUES ('4-jan-2011', 'PO111-XX', 8/*vysav.*/, 110/*jj*/);
INSERT INTO asz VALUES ('15-jan-2011', 'PO333-XX', 6/*sklo*/, 110/*jj*/);
INSERT INTO asz VALUES ('16-jan-2011', 'PO333-XX', 8/*vysav.*/, 120/*as*/);
INSERT INTO asz VALUES ('22-feb-2011', 'NR111-XX', 5/*svetla*/, 100/*jh*/);
INSERT INTO asz VALUES ('24-feb-2011', 'NR111-XX', 4/*blat.*/, 100/*jh*/);
INSERT INTO asz VALUES (sysdate, 'ZA111-XX', 5/*svetla*/, 110/*jj*/);
INSERT INTO asz VALUES (sysdate, 'NR111-XX', 5/*svetla*/, 120/*as*/);
commit;

