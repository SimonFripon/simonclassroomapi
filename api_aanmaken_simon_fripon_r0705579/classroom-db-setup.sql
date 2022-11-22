create table gebruiker
(
    id            serial primary key,
   name  varchar(255) null,
   familienaam varchar(255) null,
   klas varchar(255) null
);
Create table lokalen
(
	id serial primary key,
    naam varchar(255),
    plaatsen int null,
    datum DATE not null,
    beschikbaarheid BOOLEAN,
    gebruiker integer null,
    extras varchar (255)
);

Alter table lokalen
 ADD CONSTRAINT FK_lokalen_gebruiker FOREIGN KEY (gebruiker) REFERENCES gebruiker (id);
 


INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Simon','Fripon', '3TI1');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Jan','Jan', '3TI2');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('corneel','Bla', '3TI3');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Gert','Plop', '3TI1');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Zac','Zac', '3TI2');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Peter','Peters', '3TI3');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Jens','kjoller', '3TI1');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('ruben','gille', '3TI2');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Nathan','Miller', '3TI3');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Seppe','heyvaert', '3TI1');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Wout','bosteels', '3TI2');
INSERT INTO public.gebruiker (name, familienaam, klas) VALUES ('Jantje','pet', '3TI3');


INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , TRUE, 20, 'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum, gebruiker) VALUES ('C002' , FALSE, 30,'whitboard', TO_DATE('8/11/2022','DD/MM/YYYY'),1);
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '1', 25, 'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '1', 30,'whitboard', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '0', 40,'whitboard', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '1', 30 ,'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '0', 20, 'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '1', 25, 'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '1', 30 , TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '1', 30 ,'beamer', TO_DATE('8/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '1', 20 , TO_DATE('8/11/2022','DD/MM/YYYY'));

INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , '1', 20, 'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C002' , '1', 30,'whitboard', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '0', 25, 'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '0', 30,'whitboard', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '0', 40,'whitboard', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '1', 30 ,'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '0', 20, 'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '1', 25, 'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '1', 30 , TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '1', 30 ,'beamer', TO_DATE('9/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '0', 20 , TO_DATE('9/11/2022','DD/MM/YYYY'));

INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , '0', 20, 'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C002' , '1', 30,'whitboard', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '0', 25, 'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '1', 30,'whitboard', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '0', 40,'whitboard', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '0', 30 ,'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '0', 20, 'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '1', 25, 'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '1', 30 , TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '0', 30 ,'beamer', TO_DATE('10/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '1', 20 , TO_DATE('10/11/2022','DD/MM/YYYY'));

INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , '1', 20, 'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C002' , '1', 30,'whitboard', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '0', 25, 'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '1', 30,'whitboard', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '1', 40,'whitboard', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '1', 30 ,'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '0', 20, 'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '0', 25, 'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '0', 30 , TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '1', 30 ,'beamer', TO_DATE('11/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '1', 20 , TO_DATE('11/11/2022','DD/MM/YYYY'));

INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , '0', 20, 'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C002' , '0', 30,'whitboard', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '1', 25, 'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '1', 30,'whitboard', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '1', 40,'whitboard', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '0', 30 ,'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '1', 20, 'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '0', 25, 'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '1', 30 , TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '0', 30 ,'beamer', TO_DATE('14/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '1', 20 , TO_DATE('14/11/2022','DD/MM/YYYY'));

INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C001' , '0', 20, 'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C002' , '0', 30,'whitboard', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C003' , '1', 25, 'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C004' , '0', 30,'whitboard', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C005' , '1', 40,'whitboard', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C006' , '0', 30 ,'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C007' , '1', 20, 'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C008' , '0', 25, 'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C009' , '1', 30 , TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, extras, datum) VALUES ('C101' , '0', 30 ,'beamer', TO_DATE('15/11/2022','DD/MM/YYYY'));
INSERT INTO public.lokalen (naam ,beschikbaarheid, plaatsen, datum) VALUES ('C102' , '0', 20 , TO_DATE('15/11/2022','DD/MM/YYYY'));

 /*select * from lokalen where beschikbaarheid = 'true';
 
 update gebruiker set klas = '2TI4' where klas = '3TI1';*/
 
/* delete from lokalen WHERE plaatsen = 25;*/


