create schema production;
go

create table production.Partnerek(
	partner_id int Identity (1,1) primary key,
	n�v varchar(255) not null unique,
	ir�ny�t�sz�m int not null,
	utca varchar(255) not null,
	h�zsz�m int not null,
	engedm�ny decimal(4, 2),
);

create table production.Term�kek
(
	term�k_id int Identity (1,1) primary key,
	cikksz�m int not null unique,
	megnevez�s varchar(255) not null,
	�fa_kulcs decimal(4, 2) not null,
	elad�si_egys�g�r decimal(5, 2) not null unique,
);

create table production.T�telek(
	t�tel_id int Identity primary key,
	partner_id int not null,
	partner_n�v varchar(255),
	term�k varchar(255) not null,
	mennyis�g int not null,
	egys�g�r decimal(10, 2) not null,
	engedm�ny decimal(4, 2),
	megjegyz�s varchar(255),
	term�k_id int not null,
	netto_forgamli_�rt�k decimal(10,2),
	foreign key (partner_id) references production.Partnerek (partner_id) on delete cascade on update cascade,
	foreign key (term�k_id) references production.Term�kek (term�k_id) on delete cascade on update cascade,
);