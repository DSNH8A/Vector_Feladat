set identity_insert production.Partnerek on;

insert into production.Partnerek(partner_id, név, irányítószám, utca, házszám, engedmény)
values(1, 'AlphaZoo', 6000, 'Világ', 1, 20.00)

insert into production.Partnerek(partner_id ,név, irányítószám, utca, házszám)
values(2, 'Airvent', 2310, 'Petõfi', 12)

insert into production.Partnerek(partner_id ,név, irányítószám, utca, házszám, engedmény)
values(3, 'Agroforte', 3344, 'Ady Endre', 21, 2.00)

insert into production.Partnerek(partner_id ,név, irányítószám, utca, házszám, engedmény)
values(4, 'All Light', 1807, 'Kossuth Lajos', 4, 4.00)

insert into production.Partnerek(partner_id ,név, irányítószám, utca, házszám, engedmény)
values(5, 'Alpahvet', 3668, 'Táncsics Mihály', 9, 3.00)

insert into production.Partnerek(partner_id ,név,irányítószám, utca, házszám, engedmény)
values(6, 'Bogger', 4545, 'Forradalom', 23, 5.00)

insert into production.Partnerek(partner_id, név, irányítószám, utca, házszám, engedmény)
values(7, 'Caminus', 2211, 'Széchenyi', 10, 6.00)

insert into production.Partnerek(partner_id, név,irányítószám, utca, házszám, engedmény)
values(8, 'Bonag', 4431, 'Szabadság', 2, 7.00)

insert into production.Partnerek(partner_id, név,irányítószám, utca, házszám, engedmény)
values(9, 'Belight', 3453, 'Tél', 15, 8.00)

insert into production.Partnerek(partner_id, név,irányítószám, utca, házszám, engedmény)
values(10, 'Aston', 4511, 'Nyár', 33, 9.00)

set identity_insert production.Partnerek off;

set identity_insert production.Termékek on;

insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(1, 1000, 'Zsiráf', 10.10, 100.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(2, 1001, 'Levegõ',10.11, 101.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(3, 1002, 'Traktor', 10.12, 102.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(4, 1003, 'Áram', 10.13, 103.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(5, 1004, 'Morfium', 10.14, 104)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(6, 1005, 'Mocsár', 10.15, 105.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(7, 1006, 'Labda', 10.16, 106.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(8, 1007, 'Csónak', 10.17, 107.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(9, 1008, 'Fém', 10.18, 108.00)
insert into production.Termékek(termék_id, cikkszám, megnevezés, áfa_kulcs, eladási_egységár)
values(10, 1009, 'Kalapács', 10.19, 109.00)

set identity_insert production.Termékek off;
