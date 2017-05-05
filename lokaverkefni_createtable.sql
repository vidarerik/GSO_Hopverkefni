-- Höfundar verkefnis er Sigurður Róber Rúnarsson og Viðar Erik Viðarsson
CREATE TABLE flokkur
(
	id int primary key auto_increment,
    nafn varchar(255)
);

CREATE TABLE tegund
(
	id int primary key auto_increment,
    nafn varchar(255)
);

CREATE TABLE utgefandi
(
	id int primary key auto_increment,
    nafn varchar(255)
);


CREATE TABLE flytjandi
(
	id int primary key auto_increment,
    nafn varchar(255),
    faedingardagur varchar(255),
    lysing varchar(255),
    danardagur varchar(255) null,
    tegund_flytjanda int,
    vefsida varchar(255) null,
    uppruni varchar(255),
    Foreign Key(tegund_flytjanda) references flokkur(id)
);

CREATE TABLE diskur
(
	id int primary key auto_increment,
    nafn varchar(255),
    utgafudagur varchar(255),
    tegund_disks int,
    tilnefningar varchar(255) null,
    utgefandi int,
    Foreign Key(tegund_disks) references tegund(id),
    Foreign Key(utgefandi) references utgefandi(id)
);

CREATE TABLE lag
(
	id int primary key auto_increment,
    nafn varchar(255),
    lengd int,
    texti text,
    flokkur int(255),
	diskur int,
	flytjandi int,
    Foreign Key(flokkur) references flokkur(id),
	Foreign Key (diskur) references diskur(id),
	Foreign Key (flytjandi) references flytjandi(id)
);