/**
 * Matej Gagyi, rok 2012/13, AI_ext_bc
 * Databazove systemy - cvicenie 2
 *
 */
 
/**
 * = 1. Zadana schema je reprezentovana v DDL nasledovne:
 */
create table auto (
 spz          char(8)           primary key,
 typ          char(1) not null,
 rok_vyroby   date not null,
 celkova_cena number(5,2)       default 0,
 check (typ in ('o', 'O', 'n', 'N', 'p', 'P'))
);

create table sluzba (
 kod_sluzby     number(5)     primary key,
 nazov_sluzby   varchar(20)   not null,
 cena_sluzby    number(5)     not null
);

create table zamestnanec (
 evc        number(5)     primary key,
 meno       varchar(10)   not null,
 priezvisko varchar(20)   not null,
 email      varchar(40)   unique
);

create table asz (
 datum_sluzby    date not null,
 auto_id         char(8),
 sluzba_id       number(5),
 zamestnanec_id  number(5),
 foreign key    (auto_id)        references    auto,
 foreign key    (sluzba_id)      references    sluzba,
 foreign key    (zamestnanec_id) references    zamestnanec
);


/**
 * Sekvenciu pre jedinecne identificatori vytvorime nasledovne:
 */
create sequence szam
  start with 1000
  increment by 10;

/**
 * Tabulky a sekvenciu mozeme odstranit nasledovne:
 */

drop table auto;
drop table sluzba;
drop table zamestnanec;
drop table asz;
drop sequence szam;
