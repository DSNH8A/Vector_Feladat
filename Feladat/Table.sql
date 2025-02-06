create schema production;
go

create table production.Partnerek(
	partner_id int Identity (1,1) primary key,
	név varchar(255) not null unique,
	irányítószám int not null,
	utca varchar(255) not null,
	házszám int not null,
	engedmény decimal(4, 2),
);

create table production.Termékek
(
	termék_id int Identity (1,1) primary key,
	cikkszám int not null unique,
	megnevezés varchar(255) not null,
	áfa_kulcs decimal(4, 2) not null,
	eladási_egységár decimal(5, 2) not null unique,
);

create table production.Tételek(
	tétel_id int Identity primary key,
	partner_id int not null,
	partner_név varchar(255),
	termék varchar(255) not null,
	mennyiség int not null,
	egységár decimal(10, 2) not null,
	engedmény decimal(4, 2),
	megjegyzés varchar(255),
	termék_id int not null,
	netto_forgamli_érték decimal(10,2),
	foreign key (partner_id) references production.Partnerek (partner_id) on delete cascade on update cascade,
	foreign key (termék_id) references production.Termékek (termék_id) on delete cascade on update cascade,
);