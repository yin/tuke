UPDATE sluzba SET cena_sluzby = cena_sluzby * 1.2;

UPDATE zam SET priezvisko = 'Pekna' WHERE meno = 'Anicka' AND priezvisko = 'Dusicka';

UPDATE sluzba SET nazov_sluzby = 'svetielka' WHERE nazov_sluzby = 'svetla';

UPDATE auto SET rok_vyroby = '1-may-1991' WHERE spz = 'PO333-XX';

UPDATE asz SET datum_sluzby = sysdate WHERE sluzba_id = (SELECT kod_sluzby FROM sluzba WHERE nazov_sluzby = 'blatniky') AND auto_id = 'NR111-XX';

INSERT INTO auto (spz, typ, rok_vyroby) VALUES ('KE100-XX', 'o', sysdate);

UPDATE zam SET evc = 9999 WHERE meno = 'Janko' AND priezvisko = 'Hrasko';

--DELETE FROM asz WHERE kod_sluzby in (SELECT kod_sluzby FROM sluzba WHERE nazov_sluzby = 'vymena oleja';

DELETE FROM sluzba WHERE nazov_sluzby = 'vymena oleja';

DELETE FROM zam WHERE meno = 'Peter' AND priezvisko = 'Vrchny';

INSERT INTO asz (auto_id, datum_sluzby, sluzba_id, zamestnanec_id)
SELECT 'KE111-XX', sysdate, 999, evc
FROM zam
WHERE meno = 'Janko' AND priezvisko = 'Hrasko';

INSERT INTO auto (spz, typ, rok_vyroby) VALUES ('BB123-AA', 's', sysdate);

INSERT INTO asz (auto_id, datum_sluzby, sluzba_id, zamestnanec_id)
SELECT 'KE111-XX', sysdate, 22, evc
FROM zam
WHERE meno = 'Janko' AND priezvisko = 'Hrasko';
INSERT INTO auta (spz, typ, rok_vyroby) VALUES ('BB123-AA', 'o', sysdate);

INSERT INTO sluzba (kod_sluzby, nazov_sluzby, cena_sluzby) VALUES (ssluzby.nextVal, 'antena', 0);

commit;
rollback;
