set identity_insert production.Partnerek on;

insert into production.Partnerek(partner_id, n�v, ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(1, 'AlphaZoo', 6000, 'Vil�g', 1, 20.00)

insert into production.Partnerek(partner_id ,n�v, ir�ny�t�sz�m, utca, h�zsz�m)
values(2, 'Airvent', 2310, 'Pet�fi', 12)

insert into production.Partnerek(partner_id ,n�v, ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(3, 'Agroforte', 3344, 'Ady Endre', 21, 2.00)

insert into production.Partnerek(partner_id ,n�v, ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(4, 'All Light', 1807, 'Kossuth Lajos', 4, 4.00)

insert into production.Partnerek(partner_id ,n�v, ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(5, 'Alpahvet', 3668, 'T�ncsics Mih�ly', 9, 3.00)

insert into production.Partnerek(partner_id ,n�v,ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(6, 'Bogger', 4545, 'Forradalom', 23, 5.00)

insert into production.Partnerek(partner_id, n�v, ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(7, 'Caminus', 2211, 'Sz�chenyi', 10, 6.00)

insert into production.Partnerek(partner_id, n�v,ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(8, 'Bonag', 4431, 'Szabads�g', 2, 7.00)

insert into production.Partnerek(partner_id, n�v,ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(9, 'Belight', 3453, 'T�l', 15, 8.00)

insert into production.Partnerek(partner_id, n�v,ir�ny�t�sz�m, utca, h�zsz�m, engedm�ny)
values(10, 'Aston', 4511, 'Ny�r', 33, 9.00)

set identity_insert production.Partnerek off;

set identity_insert production.Term�kek on;

insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(1, 1000, 'Zsir�f', 10.10, 100.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(2, 1001, 'Leveg�',10.11, 101.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(3, 1002, 'Traktor', 10.12, 102.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(4, 1003, '�ram', 10.13, 103.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(5, 1004, 'Morfium', 10.14, 104)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(6, 1005, 'Mocs�r', 10.15, 105.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(7, 1006, 'Labda', 10.16, 106.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(8, 1007, 'Cs�nak', 10.17, 107.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(9, 1008, 'F�m', 10.18, 108.00)
insert into production.Term�kek(term�k_id, cikksz�m, megnevez�s, �fa_kulcs, elad�si_egys�g�r)
values(10, 1009, 'Kalap�cs', 10.19, 109.00)

set identity_insert production.Term�kek off;
