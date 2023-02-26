--cod inserare tabele


--bibliotecari

create table bibliotecari
    (id_bibliotecar number(3) constraint pk_bibliotecari primary key,
     nume varchar2(20) constraint null_bibliotecar_nume not null,
     prenume varchar2(20) constraint null_bibliotecar_prenume not null,
     data_nastere date constraint null_bibliotecar_data_nastere not null,
     salariu number(8,2) constraint null_bibliotecar_salariu not null,
     numar_etaj number(2) constraint null_numar_etaj not null,
     constraint unq_bibliotecar_nume_prenume unique(nume, prenume));
     
create sequence seq_bibliotecari
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

drop sequence seq_bibliotecari;

insert into bibliotecari values(seq_bibliotecari.nextval, 'Teleaga', 'Mihaela', '17-MAR-1946', 2300, 1); 
insert into bibliotecari values(seq_bibliotecari.nextval, 'Popa', 'Mariana', '28-JUN-1975', 2100, 2);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Boghiu', 'Emilia', '21-SEP-1940', 2500, 3);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Fornica', 'Gabriel', '17-NOV-1940', 2400, 1);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Botezatu', 'Raluca', '22-APR-1982', 2100, 2);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Tudor', 'Lavinia', '1-JAN-1971', 2300, 1);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Panfil', 'Otilia', '5-MAR-1990', 2700, 3);
insert into bibliotecari values(seq_bibliotecari.nextval, 'Rafaila', 'Camelia', '9-MAY-1960', 1900, 4);

--carti

create table carti
    (id_carte number(3) constraint pk_carti primary key,
     denumire varchar2(30) constraint null_carte_denumire not null,
     an_publicatie number(4) constraint null_carte_an_publicatie not null,
     numar_pagini number(4) constraint null_carte_numar_pagini not null,
     numar_copii number(2) default 1,
     id_editura number(2) constraint fk_carte_editura references edituri(id_editura)); 
     
     create sequence seq_carti
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;


insert into carti values(seq_carti.nextval, 'Harry Potter', 2005, 566, 4, 1);
insert into carti values(seq_carti.nextval, 'Hotul', 2012, 600, 6, 2);
insert into carti values(seq_carti.nextval, 'Baltagul', 1930, 123, 3, 2);
insert into carti values(seq_carti.nextval, 'Ion', 1920, 289, 5, 3);
insert into carti values(seq_carti.nextval, 'Enigma Otiliei', 1938, 400, 1, 4);

--cititori
     
create table cititori
    (id_cititor number(3) constraint pk_cititor primary key,
     nume varchar2(20) constraint null_cititor_nume not null,
     prenume varchar2(20) constraint null_cititor_prenume not null,
     data_nastere date constraint null_cititor_data_nastere not null,
     telefon varchar2(12) constraint null_cititor_telefon not null,
     constraint unq_cititor_nume_prenume unique(nume, prenume));

     
     
     create sequence seq_cititori
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into cititori values(seq_cititori.nextval, 'Rogoza', 'Raluca', '8-JAN-2002', '0741837264');
insert into cititori values(seq_cititori.nextval, 'Stoica', 'Elena', '7-NOV-2008', '0778347287');
insert into cititori values(seq_cititori.nextval, 'Cojoc', 'Georgiana', '17-JAN-2000', '0756123656');
insert into cititori values(seq_cititori.nextval, 'Obreja', 'Carina', '5-DEC-1980', '0723457846');
insert into cititori values(seq_cititori.nextval, 'Talpalariu', 'Iulia', '3-JUL-1965', '0789648247');
insert into cititori values(seq_cititori.nextval, 'Bejan', 'Mara', '25-AUG-2000', '0746590478'); 


--rafturi

create table rafturi
    (id_raft number(3) constraint pk_raft primary key,
     numar_raft number(2) constraint null_raft_numarraft not null,
     etaj number(1) constraint null_raft_etaj not null);
     

create sequence seq_rafturi
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

drop sequence seq_rafturi;

insert into rafturi values(seq_rafturi.nextval, 1, 1);
insert into rafturi values(seq_rafturi.nextval, 2, 1);
insert into rafturi values(seq_rafturi.nextval, 3, 1);
insert into rafturi values(seq_rafturi.nextval, 4, 1);
insert into rafturi values(seq_rafturi.nextval, 1, 2);
insert into rafturi values(seq_rafturi.nextval, 2, 2);
insert into rafturi values(seq_rafturi.nextval, 3, 2);
insert into rafturi values(seq_rafturi.nextval, 1, 3);
insert into rafturi values(seq_rafturi.nextval, 2, 3);
insert into rafturi values(seq_rafturi.nextval, 3, 3);
insert into rafturi values(seq_rafturi.nextval, 1, 4);
insert into rafturi values(seq_rafturi.nextval, 2, 4);


--autori

create table autori
    (id_autor number(3) constraint pk_autor primary key,
     nume varchar2(20) constraint null_autor_nume not null,
     prenume varchar2(20) constraint null_autor_prenume not null,
     data_nastere date constraint null_data_nastere not null,
     data_deces date,
     constraint unq_autor_nume_prenume unique(nume, prenume));
     
     
create sequence seq_autori
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into autori(id_autor, nume, prenume, data_nastere) values(seq_autori.nextval, 'Rowling', 'Joanne', '7-JAN-1956');
insert into autori values(seq_autori.nextval, 'Rebreanu', 'Liviu', '27-NOV-1885', '1-SEP-1944');
insert into autori(id_autor, nume, prenume, data_nastere) values(seq_autori.nextval, 'Zusak', 'Markus', '23-AUG-1945');
insert into autori values(seq_autori.nextval, 'Calinescu', 'George', '19-JUN-1899', '12-MAR-1965');
insert into autori values(seq_autori.nextval, 'Sadoveanu', 'Mihail', '5-NOV-1890', '19-OCT-1961');


--genuri
create table genuri
    (id_gen number(3) constraint pk_gen primary key,
     denumire varchar(20) constraint null_gen_denumire not null);

create sequence seq_genuri
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into genuri values(seq_genuri.nextval, 'Aventura');
insert into genuri values(seq_genuri.nextval, 'Mister');
insert into genuri values(seq_genuri.nextval, 'Fictiune');
insert into genuri values(seq_genuri.nextval, 'Psihologie');
insert into genuri values(seq_genuri.nextval, 'Dragoste');


--edituri

create table edituri
    (id_editura number(3) constraint pk_editura primary key,
     nume varchar(20) constraint null_editura_nume not null,
     locatie varchar(40) constraint null_editura_locatie not null);

create sequence seq_edituri
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into edituri values(seq_edituri.nextval, 'Humanitas', 'Sector 1 Bucuresti');
insert into edituri values(seq_edituri.nextval, 'Trei', 'Sector 3 Bucuresti');
insert into edituri values(seq_edituri.nextval, 'Polirom', 'Sector 1 Bucuresti');
insert into edituri values(seq_edituri.nextval, 'Arthur', 'Sector 4 Bucuresti');
insert into edituri values(seq_edituri.nextval, 'YoungArt', 'Sector 1 Bucuresti');


--penalizari

create table penalizari
    (id_penalizare number(3) constraint pk_penalizare primary key,
     motiv varchar2(40),
     pret number(4, 2) default 0);

create sequence seq_penalizari
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into penalizari values(seq_penalizari.nextval, 'nereturnarea cartii', 30);
insert into penalizari values(seq_penalizari.nextval, 'deteriorarea cartii', 15);
insert into penalizari values(seq_penalizari.nextval, 'comportament neregulamentar', 5);
insert into penalizari values(seq_penalizari.nextval, 'perturbarea linistii', 3);
insert into penalizari values(seq_penalizari.nextval, 'returnarea cartii dupa termen', 12);


--abonamente

create table abonamente
    (id_abonament number(3) constraint pk_abonament primary key,
     tip varchar2(10) constraint null_abonament_tip not null,
     numar_carti_de_imprumutat number(2) constraint null_abonament_numar_carti not null,
     pret_pe_luna number(5, 2) constraint null_abonament_pret not null);

create sequence seq_abonamente
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into abonamente values(seq_abonamente.nextval, 'student', 15, 50);
insert into abonamente values(seq_abonamente.nextval, 'elev', 12, 40);
insert into abonamente values(seq_abonamente.nextval, 'adult', 18, 80);
insert into abonamente values(seq_abonamente.nextval, 'pensionar', 16, 50);
insert into abonamente values(seq_abonamente.nextval, 'student', 8, 25);
insert into abonamente values(seq_abonamente.nextval, 'premium', 15, 45);


--se ocupa de

create table se_ocupa_de
    (id_bibliotecar number(3),
     id_raft number(3),
     constraint pk_bibliotecar_carte primary key(id_bibliotecar, id_raft),
     constraint fk_bibliotecar_carte_1 foreign key (id_bibliotecar) references bibliotecari(id_bibliotecar),
     constraint fk_bibliotecar_carte_2 foreign key (id_raft) references rafturi(id_raft));

insert into se_ocupa_de values(1, 1);
insert into se_ocupa_de values(2, 2);
insert into se_ocupa_de values(3, 1);
insert into se_ocupa_de values(4, 2);
insert into se_ocupa_de values(3, 2);
insert into se_ocupa_de values(7, 3);
insert into se_ocupa_de values(3, 3);
insert into se_ocupa_de values(1, 2);
insert into se_ocupa_de values(1, 4);
insert into se_ocupa_de values(5, 1);
insert into se_ocupa_de values(4, 3);
insert into se_ocupa_de values(6, 1);
insert into se_ocupa_de values(8, 2);
insert into se_ocupa_de values(8, 1);


--apartine

create table apartine
    (id_carte number(3),
     id_gen number(3),
     constraint pk_gen_carte primary key(id_carte, id_gen),
     constraint fk_gen_carte_1 foreign key (id_carte) references carti(id_carte),
     constraint fk_gen_carte_2 foreign key (id_gen) references genuri(id_gen));

insert into apartine values(4, 1);
insert into apartine values(1, 3);
insert into apartine values(2, 3);
insert into apartine values(3, 4);
insert into apartine values(1, 1);
insert into apartine values(1, 5);
insert into apartine values(3, 2);
insert into apartine values(4, 3);
insert into apartine values(5, 2);
insert into apartine values(3, 5);


--copii_carti

create table copii_carti
    (id_copie number(3),
     id_carte number(3),
     id_raft number(3) constraint fk_copie_carte_raft references rafturi(id_raft),
     disponibilitate varchar2(4) default 'da',
     constraint pk_copie_carte primary key(id_copie, id_carte),
     constraint fk_copie_carte_carte foreign key (id_carte) references carti(id_carte));
     
alter table copii_carti drop constraint fk_copie_carte_carte;
alter table copii_carti add constraint fk_copie_carte_carte foreign key (id_carte) references carti(id_carte) on delete cascade;

insert into copii_carti values(3, 1, 3, 'da');
insert into copii_carti values(1, 5, 2, 'da');
insert into copii_carti values(2, 1, 6, 'da');
insert into copii_carti values(5, 3, 4, 'da');
insert into copii_carti values(4, 2, 5, 'da');
insert into copii_carti values(2, 4, 7, 'da');
insert into copii_carti values(4, 1, 7, 'da');
insert into copii_carti values(1, 2, 5, 'da');
insert into copii_carti values(1, 3, 1, 'da');
insert into copii_carti values(5, 1, 2, 'da');
insert into copii_carti values(1, 1, 2, 'da');
insert into copii_carti values(3, 2, 4, 'da');
insert into copii_carti values(2, 5, 8, 'da');


--scrisa de

create table scrisa_de
    (id_carte number(3),
     id_autor number(3),
     constraint pk_carte_autor primary key(id_carte, id_autor),
     constraint fk_carte_autor_1 foreign key (id_carte) references carti(id_carte),
     constraint fk_carte_autor_2 foreign key (id_autor) references autori(id_autor));

insert into scrisa_de values(3, 2);
insert into scrisa_de values(1, 2);
insert into scrisa_de values(5, 2);
insert into scrisa_de values(1, 4);
insert into scrisa_de values(4, 3);
insert into scrisa_de values(3, 5);
insert into scrisa_de values(1, 5);
insert into scrisa_de values(4, 1);
insert into scrisa_de values(5, 5);
insert into scrisa_de values(2, 1);


--detine

create table detine
    (id_cititor number(3),
     id_abonament number(3),
     data_inceput date constraint null_data_inceput not null,
     numar_luni number(1) constraint null_numar_luni not null,
     constraint pk_cititor_abonament primary key(id_cititor, id_abonament, data_inceput),
     constraint fk_cititor_abonament_1 foreign key (id_cititor) references cititori(id_cititor),
     constraint fk_cititor_abonament_2 foreign key (id_abonament) references abonamente(id_abonament));


insert into detine values(2, 2, '02-MAY-22', 2);
insert into detine values(1, 1, '08-JAN-22', 1);
insert into detine values(3, 6, '12-MAR-22', 1);
insert into detine values(5, 4, '17-FEB-20', 4);
insert into detine values(2, 6, '02-JAN-21', 2);
insert into detine values(1, 5, '20-MAR-21', 1);
insert into detine values(4, 6, '22-SEP-21', 3);
insert into detine values(5, 6, '01-MAY-21', 2);
insert into detine values(3, 1, '15-MAY-22', 2);
insert into detine values(4, 3, '02-APR-22', 3);
insert into detine values(1, 1, '12-DEC-22', 1);
insert into detine values(5, 4, '06-NOV-22', 2);
insert into detine values(6, 1, '08-JAN-23', 2);


--primeste

create table primeste
    (id_cititor number(3),
     id_penalizare number(3),
     data_penalizare date constraint null_data_penalizare not null,
     constraint pk_cititor_penalizare primary key(id_cititor, id_penalizare, data_penalizare),
     constraint fk_cititor_penalizare_1 foreign key (id_cititor) references cititori(id_cititor),
     constraint fk_cititor_penalizare_2 foreign key (id_penalizare) references penalizari(id_penalizare));

insert into primeste values(1, 2, '2-JAN-2022');
insert into primeste values(1, 5, '7-MAR-2021');
insert into primeste values(3, 4, '8-NOV-2022');
insert into primeste values(3, 2, '17-APR-2021');
insert into primeste values(5, 2, '13-JAN-2021');
insert into primeste values(4, 1, '7-NOV-2021');
insert into primeste values(3, 2, '13-OCT-2021');
insert into primeste values(5, 3, '26-MAR-2021');
insert into primeste values(4, 2, '17-MAY-2022');
insert into primeste values(1, 1, '15-APR-2021');


--carti_imprumutate

create table carti_imprumutate
    (id_carte_imprumutata number(3) constraint pk_carte_imprumutata primary key,
     id_cititor number(3),
     id_carte number(3),
     id_copie number(3),
     id_autor number(3),
     data_imprumut date constraint null_data_imprumut not null,
     data_restituire_impusa date constraint null_data_restituire_impusa not null,
     data_restituire_efectiva date,
     constraint unq_carte_imprumutata unique(id_cititor, id_carte, id_copie, id_autor),
     constraint fk_carte_imprumutata_1 foreign key (id_cititor) references cititori(id_cititor),
     constraint fk_carte_imprumutata_2 foreign key (id_copie, id_carte) references copii_carti(id_copie, id_carte),
     constraint fk_carte_imprumutata_3 foreign key (id_autor) references autori(id_autor));

create sequence seq_carte_imprumutata
start with 1
increment by 1
minvalue 0
maxvalue 100
nocycle;

insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 1, 1, 3, 1, '08-JAN-22', '20-JAN-22', '30-JAN-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 1, 5, 1, 2, '21-MAR-22', '30-MAR-22', '5-APR-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 2, 1, 2, 2, '03-JAN-22', '13-JAN-22', '10-JAN-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 2, 3, 5, 5, '05-MAY-22', '11-MAY-22', '10-MAY-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 3, 2, 4, 3, '14-MAR-22', '25-MAR-22', '22-MAR-22');
insert into carti_imprumutate(id_carte_imprumutata, id_cititor, id_carte, id_copie, id_autor, data_imprumut, data_restituire_impusa)
values(seq_carte_imprumutata.nextval, 3, 4, 2, 1, '20-MAY-22', '30-MAY-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 4, 2, 1, 2, '24-SEP-21', '01-OCT-21', '06-OCT-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 4, 3, 1, 4, '01-NOV-22', '14-NOV-22', '05-NOV-22');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 5, 1, 5, 2, '05-MAY-21', '10-MAY-21', '07-MAy-22');
insert into carti_imprumutate(id_carte_imprumutata, id_cititor, id_carte, id_copie, id_autor, data_imprumut, data_restituire_impusa)
values(seq_carte_imprumutata.nextval, 5, 1, 4, 2, '19-FEB-20', '27-FEB-20');
insert into carti_imprumutate values(seq_carte_imprumutata.nextval, 1, 2, 1, 1, '23-DEC-22', '31-DEC-22', '01-JAN-23');
insert into carti_imprumutate(id_carte_imprumutata, id_cititor, id_carte, id_copie, id_autor, data_imprumut, data_restituire_impusa)
values(seq_carte_imprumutata.nextval, 5, 2, 3, 1, '26-DEC-22', '03-JAN-23');





--Exercitiul 6

create or replace procedure exercitiul_6
is
    type tablou_indexat is table of carti_imprumutate%rowtype index by pls_integer;
    tablou tablou_indexat;
    cod_carte carti_imprumutate.id_carte%type;
    type vector is varray(20) of number;
    coduri_autori vector := vector();
    cititori_penalizati vector := vector();
    v_nume_autor autori.nume%type;
    v_prenume_autor autori.prenume%type;
    cod_cititor cititori.id_cititor%type;
    numar_cititor_penalizat number := 0;
    nume_carte carti.denumire%type;
    nume_cititor cititori.nume%type;
    prenume_cititor cititori.prenume%type;
    gasit number := 0;
begin
    select *
    bulk collect into tablou
    from carti_imprumutate
    where data_restituire_efectiva is null;
    for i in tablou.first..tablou.last loop
        cod_carte := tablou(i).id_carte;
        cod_cititor := tablou(i).id_cititor;
        gasit := 0;
        if numar_cititor_penalizat != 0 then
            for j in cititori_penalizati.first..cititori_penalizati.last loop
                if cititori_penalizati(j) = cod_cititor then
                    gasit := 1;
                end if;
            end loop;
        end if;
        if gasit = 0 then
            numar_cititor_penalizat := numar_cititor_penalizat + 1;
            cititori_penalizati.extend;
            cititori_penalizati(numar_cititor_penalizat):= cod_cititor;
        end if;
        select id_autor
        bulk collect into coduri_autori
        from scrisa_de
        where id_carte = cod_carte;
        select denumire
        into nume_carte
        from carti
        where id_carte = cod_carte;
        dbms_output.put_line('Cartea: ' || nume_carte);
        dbms_output.put_line('Autorii cartii: ');
        for j in coduri_autori.first..coduri_autori.last loop
            select nume, prenume
            into v_nume_autor, v_prenume_autor
            from autori
            where id_autor = coduri_autori(j);
            dbms_output.put_line( v_nume_autor || ' ' || v_prenume_autor);
        end loop;
        dbms_output.new_line();
    end loop;
    dbms_output.put_line('Au fost penalizati ' || numar_cititor_penalizat || ' cititori.');
    for i in cititori_penalizati.first..cititori_penalizati.last loop
        insert into primeste values(cititori_penalizati(i), 1, sysdate);
        select prenume, nume
        into nume_cititor, prenume_cititor
        from cititori
        where id_cititor = cititori_penalizati(i);
        dbms_output.put_line(nume_cititor || ' ' || prenume_cititor);
    end loop;
end exercitiul_6;
/

execute exercitiul_6;



--Exercitiul 7


create or replace procedure exercitiul_7 
is
    cursor c_etaje is 
        select distinct(etaj)
        from rafturi
        group by etaj
        order by 1;
    cursor colegi_palier (v_numar_etaj bibliotecari.numar_etaj%type) is
        select id_bibliotecar, nume, prenume, salariu 
        from bibliotecari
        where numar_etaj = v_numar_etaj
        order by 2, 3;
    b_numar_etaj bibliotecari.numar_etaj%type;
    b_numar_angajati_etaj number;
    type b_record is record (id bibliotecari.id_bibliotecar%type,
                            nume bibliotecari.nume%type,
                            prenume bibliotecari.prenume%type,
                            salariu bibliotecari.salariu%type);
    record_bibliotecari b_record;
    salariu_minim_etaj bibliotecari.salariu%type;
    salariu_maxim_etaj bibliotecari.salariu%type;
begin
    open c_etaje;
    loop
        fetch c_etaje into b_numar_etaj;
        exit when c_etaje%notfound;
        
        --calculez max si minim pe etaj
        select max(salariu), min(salariu), count(id_bibliotecar)
        into salariu_maxim_etaj, salariu_minim_etaj, b_numar_angajati_etaj
        from bibliotecari
        where numar_etaj = b_numar_etaj;
        
        dbms_output.put_line('Etajul ' || b_numar_etaj);
        dbms_output.new_line;
        dbms_output.put_line('Colegi: ');
        
        open colegi_palier(b_numar_etaj);
        
        loop
            fetch colegi_palier into record_bibliotecari;
            exit when colegi_palier%notfound;
            dbms_output.put(colegi_palier%rowcount || '. ' || record_bibliotecari.nume || ' ' || record_bibliotecari.prenume);
            if b_numar_angajati_etaj = 1 then
                dbms_output.put_line(' - > Este singurul angajat care lucreaza la acest etaj.');
            elsif record_bibliotecari.salariu = salariu_minim_etaj and record_bibliotecari.salariu = salariu_maxim_etaj then
                dbms_output.put_line(' - > Acest angajat are salariul egal cu salariul maxim, dar si cu salariu minim de la acest etaj.');
            elsif record_bibliotecari.salariu = salariu_maxim_etaj then
                dbms_output.put_line(' - > Acest angajat are salariul maxim de la acest etaj.');
            elsif record_bibliotecari.salariu = salariu_minim_etaj then
                dbms_output.put_line(' - > Acest angajat are salariul minim de la acest etaj.');
            end if;
        end loop;
        if colegi_palier%rowcount = 0 then
            dbms_output.put_line('La acest etaj nu lucreaza nimeni momentan.');
        end if;
        close colegi_palier;
        dbms_output.new_line;
    end loop;
    close c_etaje;
end exercitiul_7;
/

execute exercitiul_7;




--Exercitiul 8


create or replace function exercitiul_8(prenume_cititor cititori.prenume%type)
return varchar2
is
    medie_varste float;
    type vector is varray(100) of autori.nume%type;
    autori_contemporani vector := vector();
    autori_carte vector := vector();
    numar_autori_contemporani number := 0;
    varsta_totala_autori number := 0 ;
    varsta number := 0;
    deces date;
    nume_autor autori.nume%type;
    prenume_autor autori.prenume%type;
    exceptie_autori exception;
    exceptie_cititor exception;
    numar_carti_imprumutate number;
    prenume_cititor_cautat cititori.prenume%type;
begin
    select prenume
    into prenume_cititor_cautat
    from cititori
    where upper(cititori.prenume) = upper(prenume_cititor);
    select count(id_carte_imprumutata)
    into numar_carti_imprumutate
    from carti_imprumutate
    where id_cititor = (select id_cititor
                        from cititori
                        where upper(cititori.prenume) = upper(prenume_cititor));
    if numar_carti_imprumutate = 0 then 
        raise exceptie_cititor;
    end if;
    --aflu cati autori are cartea
    select scrisa_de.id_autor
    bulk collect into autori_carte
    from carti_imprumutate join cititori on cititori.id_cititor = carti_imprumutate.id_cititor join scrisa_de on carti_imprumutate.id_carte = scrisa_de.id_carte
    where carti_imprumutate.data_imprumut = (select max(data_imprumut)
                                            from carti_imprumutate
                                            where carti_imprumutate.id_cititor = (select id_cititor
                                                                                    from cititori
                                                                                    where upper(cititori.prenume) = upper(prenume_cititor)));
    --caut autorii contemporani  
    dbms_output.put_line('Autorii celei mai recente carti imprumutate de ' || prenume_cititor || ': ');
    for i in autori_carte.first..autori_carte.last loop
        --dbms_output.put_line(autori_carte(i));
        select data_deces, nume, prenume
        into deces, nume_autor, prenume_autor
        from autori
        where id_autor = autori_carte(i);
        dbms_output.put('Nume si prenume: ' || nume_autor || ' ' || prenume_autor);
        if deces is null then
            select extract(year from sysdate) - extract(year from data_nastere)
            into varsta
            from autori
            where id_autor = autori_carte(i);
            dbms_output.put_line('   Varsta: ' || varsta);
            numar_autori_contemporani := numar_autori_contemporani + 1;
            varsta_totala_autori := varsta_totala_autori + varsta;
            autori_contemporani.extend();
            autori_contemporani(numar_autori_contemporani) := autori_carte(i);
        else 
             dbms_output.put_line('  Deces ' || deces);
        end if;
        
    end loop;
    dbms_output.new_line;
    
    if numar_autori_contemporani = 0 then
        raise exceptie_autori; 
    else
        medie_varste := varsta_totala_autori/numar_autori_contemporani;
    end if;
    
    return ('Media varstelor autorilor contemporani ai cartii: ' || to_char(medie_varste)); 
exception
    when no_data_found then
        return('Nu exista niciun cititor cu prenumele ' || prenume_cititor || '.');
    when too_many_rows then
        return('Exista mai multi cititori cu prenumele ' || prenume_cititor || '.');
    when exceptie_autori then 
        return('Toti autorii cartii au murit.');
    when exceptie_cititor then
        return('Cititorul ' || prenume_cititor || ' nu a imprumutat nicio carte.');
end exercitiul_8;
/


begin
    dbms_output.put_line(exercitiul_8('Raluca'));
end;
/

begin
    dbms_output.put_line(exercitiul_8('Elena'));
end;
/

begin
    dbms_output.put_line(exercitiul_8('Mara'));
end;
/

insert into cititori values(7, 'Ioana', 'Raluca', '02-JAN-2009', '095847584');
begin
    dbms_output.put_line(exercitiul_8('Raluca'));
end;
/

begin
    dbms_output.put_line(exercitiul_8('Ana'));
end;
/





--Exercitiul 9


create or replace procedure exercitiul_9(denumire_carte carti.denumire%type)
is
    type vector is varray(100) of number;
    v_copii_carti_disponibile vector := vector();
    numar_cititori number;
    numar_copii_carti_imprumutate number := 0;
    numar_imprumuturi number;
    editura varchar2(20);
    data date;
    copii_disponibile number;
    raport float;
    imprumuturi number;
    cod_carte carti.id_carte%type;
begin
    select id_carte
    into cod_carte
    from carti
    where upper(carti.denumire) = upper(denumire_carte);
    select count(id_carte_imprumutata)
    into numar_imprumuturi
    from carti_imprumutate
    where id_carte = (select id_carte
                                from carti
                                where upper(carti.denumire) = upper(denumire_carte));
    if numar_imprumuturi != 0 then 
        select e.nume, count(distinct(c.id_cititor)), count(cc.id_copie), min(data_nastere)
        into editura, numar_cititori, numar_copii_carti_imprumutate, data
        from carti_imprumutate ci, cititori c, carti ca, edituri e, copii_carti cc
        where ca.id_carte = (select id_carte
                                    from carti
                                    where upper(carti.denumire) = upper(denumire_carte))  and ci.id_cititor = c.id_cititor and ci.id_carte = ca.id_carte and ca.id_editura = e.id_editura and cc.id_carte = ci.id_carte and ci.id_copie = cc.id_copie
        group by e.nume;
        dbms_output.put_line('Denumirea cartii este: ' || denumire_carte);
        dbms_output.put_line('Editura la care se gaseste cartea este: ' || editura);
        dbms_output.put_line('Numarul de cititori care au imprumutat cartea este: ' || numar_cititori);
        dbms_output.put_line('Numarul de imprumuturi este: ' || numar_imprumuturi);
        dbms_output.put_line('Numarul de copii de carte imprumutate este: ' || numar_copii_carti_imprumutate);
        
        select ci.id_copie
        bulk collect into v_copii_carti_disponibile
        from copii_carti cc, carti_imprumutate ci
        where ci.id_carte = (select id_carte
                        from carti
                        where upper(carti.denumire) = upper(denumire_carte)) and disponibilitate = 'da' and data_restituire_efectiva is not null
        and cc.id_carte = ci.id_carte and cc.id_copie = ci.id_copie;
        
        dbms_output.put('Id-urile copiilor cartilor care sunt disponibile: ');
        for i in v_copii_carti_disponibile.first..v_copii_carti_disponibile.last loop
                dbms_output.put(v_copii_carti_disponibile(i) || '    ');
        end loop;
        dbms_output.new_line();
    end if;
    --nr copii imprumutate disponibile / numar copii total imprumutate
    raport := v_copii_carti_disponibile.count/numar_copii_carti_imprumutate;
    
    dbms_output.put_line('Raportul dintre numarul de copii disponibile care au fost imprumutate si numarul total de copii imprumutate ale cartii date este egal cu ' || raport || '.');
    
exception
    when no_data_found then
         dbms_output.put_line('Nu exista nicio carte cu aceasta denumire.');
    when too_many_rows then
         dbms_output.put_line('Exista mai multe carti cu aceasta denumire.');
    when zero_divide then   
         dbms_output.put_line('Ai facut o impartire la 0! Nu a fost imprumutata nicio copie a cartii.');
    when others then
         dbms_output.put_line('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
end exercitiul_9;
/



begin 
    exercitiul_9('Harry Potter');
end;
/

begin 
    exercitiul_9('Hobbitul');
end;
/


insert into carti values(6, 'Hobbitul', 2009, 467, 2, 2);
select * from carti;
begin 
    exercitiul_9('Hobbitul');
end;
/

insert into carti values(7, 'Hobbitul', 2009, 467, 2, 2);
select * from carti;
begin 
    exercitiul_9('Hobbitul');
end;
/




--Exercitiul 10


create or replace trigger exercitiul_10
before insert on bibliotecari
begin
    if user != upper('raluca') then 
        raise_application_error(-20004,'Doar userul RALUCA are voie sa introduca date in tabela bibliotecari!');
    end if;
end;
/

insert into raluca.bibliotecari values(9, 'Cojoc', 'Georgiana', '9-MAY-1940', 2000, 2);

drop trigger exercitiul_10;


--Exercitiul 11

create or replace trigger exercitiul_11 
after insert or delete or update of data_restituire_efectiva on carti_imprumutate
for each row
begin
    if inserting then 
        if :new.data_restituire_efectiva is null then
            update copii_carti
            set disponibilitate = 'nu'
            where id_carte = :new.id_carte and id_copie = :new.id_copie;
        else
            update copii_carti
            set disponibilitate = 'da'
            where id_carte = :old.id_carte and id_copie = :old.id_copie;
        end if;
    elsif updating then
         if :new.data_restituire_efectiva is null then
            update copii_carti
            set disponibilitate = 'nu'
            where id_carte = :old.id_carte and id_copie = :old.id_copie;
        else 
             update copii_carti
            set disponibilitate = 'da'
            where id_carte = :old.id_carte and id_copie = :old.id_copie;
        end if;
    else
        if :old.data_restituire_efectiva is null then
            update copii_carti
            set disponibilitate = 'nu'
            where id_carte = :old.id_carte and id_copie = :old.id_copie;
        else 
            update copii_carti
            set disponibilitate = 'da'
            where id_carte = :old.id_carte and id_copie = :old.id_copie;
        end if;
    end if;
end exercitiul_11;
/


--teste pt insert
insert into carti_imprumutate(id_carte_imprumutata, id_cititor, id_carte, id_copie, id_autor, data_imprumut, data_restituire_impusa) values(13, 1, 5, 2, 2, '5-JAN-23', '10-JAN-23');
insert into carti_imprumutate(id_carte_imprumutata, id_cititor, id_carte, id_copie, id_autor, data_imprumut, data_restituire_impusa, data_restituire_efectiva) values(14, 1, 1, 3, 2, '14-DEC-22', '23-DEC-21', '28-DEC-22');



--teste pentru update
update carti_imprumutate set data_restituire_efectiva = '23-JUL-22' where id_carte_imprumutata = 6;
update carti_imprumutate set data_restituire_efectiva = null where id_carte_imprumutata = 6;


--teste pentru delete
delete from carti_imprumutate where id_carte_imprumutata = 13;

drop trigger exercitiul_11;




--Exercitiul 12

create table istoric(utilizator varchar2(30),
                                nume_baza_de_date varchar2(40),
                                eveniment varchar2(30),
                                nume_obiect varchar2(30),
                                data date);


create or replace trigger exercitiul_12
after create or drop or alter or servererror on database
begin
    if dbms_utility.format_error_stack is null then
        insert into istoric values(sys.login_user, sys.database_name, sys.sysevent, sys.dictionary_obj_name, sysdate);
    else
        raise_application_error(-20010, 'S-a declansat o eroare!');
    end if;
    
end exercitiul_12;
/

create table test(id number(2));

select * from istoric;

insert into test values (12345);

drop table test;
drop trigger exercitiul_12;
drop table istoric;





--Exercitiul 13
create or replace package exercitiul_13 as
    procedure exercitiul_6;
    procedure exercitiul_7;
    function exercitiul_8(prenume_cititor cititori.prenume%type) return varchar2;
    procedure exercitiul_9(denumire_carte carti.denumire%type);
end exercitiul_13;
/


create or replace package body exercitiul_13 as
    procedure exercitiul_6
    is
        type tablou_indexat is table of carti_imprumutate%rowtype index by pls_integer;
        tablou tablou_indexat;
        cod_carte carti_imprumutate.id_carte%type;
        type vector is varray(20) of number;
        coduri_autori vector := vector();
        cititori_penalizati vector := vector();
        v_nume_autor autori.nume%type;
        v_prenume_autor autori.prenume%type;
        cod_cititor cititori.id_cititor%type;
        numar_cititor_penalizat number := 0;
        nume_carte carti.denumire%type;
        nume_cititor cititori.nume%type;
        prenume_cititor cititori.prenume%type;
        gasit number := 0;
    begin
        select *
        bulk collect into tablou
        from carti_imprumutate
        where data_restituire_efectiva is null;
        for i in tablou.first..tablou.last loop
            cod_carte := tablou(i).id_carte;
            cod_cititor := tablou(i).id_cititor;
            gasit := 0;
            if numar_cititor_penalizat != 0 then
                for j in cititori_penalizati.first..cititori_penalizati.last loop
                    if cititori_penalizati(j) = cod_cititor then
                        gasit := 1;
                    end if;
                end loop;
            end if;
            if gasit = 0 then
                numar_cititor_penalizat := numar_cititor_penalizat + 1;
                cititori_penalizati.extend;
                cititori_penalizati(numar_cititor_penalizat):= cod_cititor;
            end if;
            select id_autor
            bulk collect into coduri_autori
            from scrisa_de
            where id_carte = cod_carte;
            select denumire
            into nume_carte
            from carti
            where id_carte = cod_carte;
            dbms_output.put_line('Cartea: ' || nume_carte);
            dbms_output.put_line('Autorii cartii: ');
            for j in coduri_autori.first..coduri_autori.last loop
                select nume, prenume
                into v_nume_autor, v_prenume_autor
                from autori
                where id_autor = coduri_autori(j);
                dbms_output.put_line( v_nume_autor || ' ' || v_prenume_autor);
            end loop;
            dbms_output.new_line();
        end loop;
        dbms_output.put_line('Au fost penalizati ' || numar_cititor_penalizat || ' cititori.');
        for i in cititori_penalizati.first..cititori_penalizati.last loop
            insert into primeste values(cititori_penalizati(i), 1, sysdate);
            select prenume, nume
            into nume_cititor, prenume_cititor
            from cititori
            where id_cititor = cititori_penalizati(i);
            dbms_output.put_line(nume_cititor || ' ' || prenume_cititor);
        end loop;
    end exercitiul_6;
    
    
    
    procedure exercitiul_7 
    is
        cursor c_etaje is 
            select distinct(etaj)
            from rafturi
            group by etaj
            order by 1;
        cursor colegi_palier (v_numar_etaj bibliotecari.numar_etaj%type) is
            select id_bibliotecar, nume, prenume, salariu 
            from bibliotecari
            where numar_etaj = v_numar_etaj
            order by 2, 3;
        b_numar_etaj bibliotecari.numar_etaj%type;
        b_numar_angajati_etaj number;
        type b_record is record (id bibliotecari.id_bibliotecar%type,
                                nume bibliotecari.nume%type,
                                prenume bibliotecari.prenume%type,
                                salariu bibliotecari.salariu%type);
        record_bibliotecari b_record;
        salariu_minim_etaj bibliotecari.salariu%type;
        salariu_maxim_etaj bibliotecari.salariu%type;
    begin
        open c_etaje;
        loop
            fetch c_etaje into b_numar_etaj;
            exit when c_etaje%notfound;
            
            --calculez max si minim pe etaj
            select max(salariu), min(salariu), count(id_bibliotecar)
            into salariu_maxim_etaj, salariu_minim_etaj, b_numar_angajati_etaj
            from bibliotecari
            where numar_etaj = b_numar_etaj;
            
            dbms_output.put_line('Etajul ' || b_numar_etaj);
            dbms_output.new_line;
            dbms_output.put_line('Colegi: ');
            
            open colegi_palier(b_numar_etaj);
            
            loop
                fetch colegi_palier into record_bibliotecari; 
                exit when colegi_palier%notfound;
                dbms_output.put(colegi_palier%rowcount || '. ' || record_bibliotecari.nume || ' ' || record_bibliotecari.prenume);
                if b_numar_angajati_etaj = 1 then
                    dbms_output.put_line(' - > Este singurul angajat care lucreaza la acest etaj.');
                elsif record_bibliotecari.salariu = salariu_minim_etaj and record_bibliotecari.salariu = salariu_maxim_etaj then
                    dbms_output.put_line(' - > Acest angajat are salariul egal cu salariul maxim, dar si cu salariu minim de la acest etaj.');
                elsif record_bibliotecari.salariu = salariu_maxim_etaj then
                    dbms_output.put_line(' - > Acest angajat are salariul maxim de la acest etaj.');
                elsif record_bibliotecari.salariu = salariu_minim_etaj then
                    dbms_output.put_line(' - > Acest angajat are salariul minim de la acest etaj.');
                end if;
            end loop;
            if colegi_palier%rowcount = 0 then
                dbms_output.put_line('La acest etaj nu lucreaza nimeni momentan.');
            end if;
            close colegi_palier;
            dbms_output.new_line;
        end loop;
        close c_etaje;
    end exercitiul_7;
    
    function exercitiul_8(prenume_cititor cititori.prenume%type)
    return varchar2
    is
        medie_varste float;
        type vector is varray(100) of autori.nume%type;
        autori_contemporani vector := vector();
        autori_carte vector := vector();
        numar_autori_contemporani number := 0;
        varsta_totala_autori number := 0 ;
        varsta number := 0;
        deces date;
        nume_autor autori.nume%type;
        prenume_autor autori.prenume%type;
        exceptie_autori exception;
        exceptie_cititor exception;
        numar_carti_imprumutate number;
        prenume_cititor_cautat cititori.prenume%type;
    begin
        select prenume
        into prenume_cititor_cautat
        from cititori
        where upper(cititori.prenume) = upper(prenume_cititor);
        select count(id_carte_imprumutata)
        into numar_carti_imprumutate
        from carti_imprumutate
        where id_cititor = (select id_cititor
                            from cititori
                            where upper(cititori.prenume) = upper(prenume_cititor));
        if numar_carti_imprumutate = 0 then 
            raise exceptie_cititor;
        end if;
        --aflu cati autori are cartea
        select scrisa_de.id_autor
        bulk collect into autori_carte
        from carti_imprumutate join cititori on cititori.id_cititor = carti_imprumutate.id_cititor join scrisa_de on carti_imprumutate.id_carte = scrisa_de.id_carte
        where carti_imprumutate.data_imprumut = (select max(data_imprumut)
                                                from carti_imprumutate
                                                where carti_imprumutate.id_cititor = (select id_cititor
                                                                                        from cititori
                                                                                        where upper(cititori.prenume) = upper(prenume_cititor)));
        --caut autorii contemporani  
        dbms_output.put_line('Autorii celei mai recente carti imprumutate de ' || prenume_cititor || ': ');
        for i in autori_carte.first..autori_carte.last loop
            --dbms_output.put_line(autori_carte(i));
            select data_deces, nume, prenume
            into deces, nume_autor, prenume_autor
            from autori
            where id_autor = autori_carte(i);
            dbms_output.put('Nume si prenume: ' || nume_autor || ' ' || prenume_autor);
            if deces is null then
                select extract(year from sysdate) - extract(year from data_nastere)
                into varsta
                from autori
                where id_autor = autori_carte(i);
                dbms_output.put_line('   Varsta: ' || varsta);
                numar_autori_contemporani := numar_autori_contemporani + 1;
                varsta_totala_autori := varsta_totala_autori + varsta;
                autori_contemporani.extend();
                autori_contemporani(numar_autori_contemporani) := autori_carte(i);
            else 
                 dbms_output.put_line('  Deces ' || deces);
            end if;
            
        end loop;
        dbms_output.new_line;
        
        if numar_autori_contemporani = 0 then
            raise exceptie_autori; 
        else
            medie_varste := varsta_totala_autori/numar_autori_contemporani;
        end if;
        
        return ('Media varstelor autorilor contemporani ai cartii: ' || to_char(medie_varste)); 
    exception
        when no_data_found then
            return('Nu exista niciun cititor cu prenumele ' || prenume_cititor || '.');
        when too_many_rows then
            return('Exista mai multi cititori cu prenumele ' || prenume_cititor || '.');
        when exceptie_autori then 
            return('Toti autorii cartii au murit.');
        when exceptie_cititor then
            return('Cititorul ' || prenume_cititor || ' nu a imprumutat nicio carte.');
    end exercitiul_8;
    
    
    procedure exercitiul_9(denumire_carte carti.denumire%type)
    is
        type vector is varray(100) of number;
        v_copii_carti_disponibile vector := vector();
        numar_cititori number;
        numar_copii_carti_imprumutate number := 0;
        numar_imprumuturi number;
        editura varchar2(20);
        data date;
        copii_disponibile number;
        raport float;
        imprumuturi number;
        cod_carte carti.id_carte%type;
    begin
        select id_carte
        into cod_carte
        from carti
        where upper(carti.denumire) = upper(denumire_carte);
        select count(id_carte_imprumutata)
        into numar_imprumuturi
        from carti_imprumutate
        where id_carte = (select id_carte
                                    from carti
                                    where upper(carti.denumire) = upper(denumire_carte));
        if numar_imprumuturi != 0 then 
            select e.nume, count(distinct(c.id_cititor)), count(cc.id_copie), min(data_nastere)
            into editura, numar_cititori, numar_copii_carti_imprumutate, data
            from carti_imprumutate ci, cititori c, carti ca, edituri e, copii_carti cc
            where ca.id_carte = (select id_carte
                                        from carti
                                        where upper(carti.denumire) = upper(denumire_carte))  and ci.id_cititor = c.id_cititor and ci.id_carte = ca.id_carte and ca.id_editura = e.id_editura and cc.id_carte = ci.id_carte and ci.id_copie = cc.id_copie
            group by e.nume;
            dbms_output.put_line('Denumirea cartii este: ' || denumire_carte);
            dbms_output.put_line('Editura la care se gaseste cartea este: ' || editura);
            dbms_output.put_line('Numarul de cititori care au imprumutat cartea este: ' || numar_cititori);
            dbms_output.put_line('Numarul de imprumuturi este: ' || numar_imprumuturi);
            dbms_output.put_line('Numarul de copii de carte imprumutate este: ' || numar_copii_carti_imprumutate);
            
            select ci.id_copie
            bulk collect into v_copii_carti_disponibile
            from copii_carti cc, carti_imprumutate ci
            where ci.id_carte = (select id_carte
                            from carti
                            where upper(carti.denumire) = upper(denumire_carte)) and disponibilitate = 'da' and data_restituire_efectiva is not null
            and cc.id_carte = ci.id_carte and cc.id_copie = ci.id_copie;
            
            dbms_output.put('Id-urile copiilor cartilor care sunt disponibile: ');
            for i in v_copii_carti_disponibile.first..v_copii_carti_disponibile.last loop
                    dbms_output.put(v_copii_carti_disponibile(i) || '    ');
            end loop;
            dbms_output.new_line();
        end if;
        --nr copii imprumutate disponibile / numar copii total imprumutate
        raport := v_copii_carti_disponibile.count/numar_copii_carti_imprumutate;
        
        dbms_output.put_line('Raportul dintre numarul de copii disponibile care au fost imprumutate si numarul total de copii imprumutate ale cartii date este egal cu ' || raport || '.');
        
    exception
        when no_data_found then
             dbms_output.put_line('Nu exista nicio carte cu aceasta denumire.');
        when too_many_rows then
             dbms_output.put_line('Exista mai multe carti cu aceasta denumire.');
        when zero_divide then   
             dbms_output.put_line('Ai facut o impartire la 0! Nu a fost imprumutata nicio copie a cartii.');
        when others then
             dbms_output.put_line('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
    end exercitiul_9;
    
end exercitiul_13;
/

begin
    exercitiul_13.exercitiul_6();
end;
/

begin
    exercitiul_13.exercitiul_7();
end;
/

begin
    dbms_output.put_line(exercitiul_13.exercitiul_8('Raluca'));
end;
/

begin 
    exercitiul_13.exercitiul_9('Harry Potter');
end;
/











--Exercitiul 14

create or replace package exercitiul_14 as
    procedure populare_matrice; 
    procedure este_cel_mai_tanar_cititor(cod_cititor in cititori.id_cititor%type,
                                         tanar out boolean);
    procedure cel_mai_tanar_cititor(cod_cititor in cititori.id_cititor%type);        
    procedure cititor_devotat(cod_cititor cititori.id_cititor%type);
    function cititor_activ(cod_cititor cititori.id_cititor%type) return varchar2;
    function vechime(cod_cititor cititori.id_cititor%type) return boolean;
    procedure stimulare_cititor(cod_cititor cititori.id_cititor%type);
    procedure afisare;
end exercitiul_14;
/
    
    

create or replace package body exercitiul_14 as
    type vector is varray(200) of varchar2(250);
    type matrice is varray(200) of vector; 
    lista_carti_imprumutate matrice := matrice();
    lista_cititori matrice := matrice();
    
    type cititor_record is record(nume cititori.nume%type,
                                    prenume cititori.prenume%type,
                                    data_nastere cititori.data_nastere%type);
    cititor_tanar cititor_record;
    este_cititor_tanar boolean;
    
    type tablou_imbricat is table of number;
    coduri_cititori tablou_imbricat := tablou_imbricat();
    
    procedure populare_matrice
    is
        numar_cititori number;
    begin   
        select count(id_cititor)
        into numar_cititori
        from cititori;
        
        coduri_cititori.extend(numar_cititori);
        lista_carti_imprumutate.extend(numar_cititori);
        lista_cititori.extend(numar_cititori);
        
        select id_cititor
        bulk collect into coduri_cititori
        from cititori;
        for i in coduri_cititori.first..coduri_cititori.last loop
            lista_carti_imprumutate(i) := vector();
            lista_carti_imprumutate(i).extend();
            lista_cititori(i) := vector();
            lista_cititori(i).extend(6); --1 nume 2 prenume 3 numar carti imprumutate 4 cititor devotat
            
            select prenume, nume
            into lista_cititori(i)(1), lista_cititori(i)(2)
            from cititori
            where id_cititor = coduri_cititori(i);
            
            select to_char(count(id_carte_imprumutata))
            into lista_cititori(i)(3)
            from carti_imprumutate
            where id_cititor = coduri_cititori(i);
            
            if lista_cititori(i)(3) = '0' then
                lista_carti_imprumutate(i)(1) := 'Nu a imprumutat nicio carte momentan.';
            else
                select distinct(denumire)
                bulk collect into lista_carti_imprumutate(i)
                from carti_imprumutate, carti
                where carti_imprumutate.id_carte = carti.id_carte and id_cititor = coduri_cititori(i);
            end if;
        end loop;
    end populare_matrice;
    
    
    
    procedure este_cel_mai_tanar_cititor(cod_cititor in cititori.id_cititor%type,
                                    tanar out boolean)
    is
        data_minima date;
        data_cititor date;
    begin
        select max(data_nastere)
        into data_minima
        from cititori;
        
        select data_nastere
        into data_cititor
        from cititori
        where cod_cititor = id_cititor;
        
        if data_cititor = data_minima then
            tanar := true;
        else    
            tanar := false;
        end if;
    exception
        when no_data_found then 
            dbms_output.put_line('Nu exista niciun cititor cu acest id.');
        when others then
            dbms_output.put_line('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
    end este_cel_mai_tanar_cititor;
    
    
    procedure cel_mai_tanar_cititor(cod_cititor in cititori.id_cititor%type)
    is
    begin
        select nume, prenume, data_nastere
        into cititor_tanar
        from cititori
        where id_cititor = cod_cititor;
    exception
        when no_data_found then 
            dbms_output.put_line('Nu exista niciun cititor cu acest id.');
        when others then
            dbms_output.put_line('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
    end cel_mai_tanar_cititor;
    
    
    
    function cititor_activ(cod_cititor cititori.id_cititor%type)
    return varchar2
    is
        activitate number;
        id_max_cititor number;
        exceptie exception;
    begin
        select max(id_cititor)
        into id_max_cititor
        from cititori;
        if cod_cititor > id_max_cititor then
            raise exceptie;
        else
            select count(distinct(id_carte))
            into activitate
            from carti_imprumutate
            where id_cititor = cod_cititor and extract(year from data_imprumut) = '2022';
            
            if activitate >= 2 then
                return 'activ';
            else 
                return 'inactiv';
            end if;
        end if;
    exception
        when exceptie then
            return('Nu exista niciun cititor cu acest id. Id-ul trebuie sa fie mai mic decat ' || id_max_cititor || '.');
        when others then
            return('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
    end cititor_activ;
    
    
    function vechime(cod_cititor cititori.id_cititor%type)
    return boolean
    is
        ani number;
    begin
        select extract(year from sysdate) - extract(year from min(data_inceput))
        into ani
        from detine
        where id_cititor = cod_cititor;
        
        if ani >= 2 then
            return true;
        else 
            return false;
        end if;
    exception
        when no_data_found then 
            dbms_output.put_line('Nu exista niciun cititor cu acest id.');
        when others then
            dbms_output.put_line('Codul erorii: ' || sqlcode || '   Mesajul erorii: ' || sqlerrm);
    end vechime;
    
    
    procedure cititor_devotat(cod_cititor cititori.id_cititor%type)
    is
    begin
        if to_number(lista_cititori(cod_cititor)(3)) >= 3 then
            lista_cititori(cod_cititor)(4) := 'PREMIU: CITITOR DEVOTAT';
        end if;
    end cititor_devotat;
    
    
    procedure stimulare_cititor(cod_cititor cititori.id_cititor%type)
    is
        cod_abonament_premium number;
    begin
        select id_abonament
        into cod_abonament_premium 
        from abonamente
        where lower(tip) = 'premium';
        
        insert into detine
        values(cod_cititor, cod_abonament_premium, sysdate, 1);
    end stimulare_cititor;
    
    
    procedure afisare
    is
    begin
        populare_matrice();
        
        for i in coduri_cititori.first..coduri_cititori.last loop
            este_cititor_tanar := false;
            este_cel_mai_tanar_cititor(coduri_cititori(i), este_cititor_tanar);
            if este_cititor_tanar = true then
               cel_mai_tanar_cititor(coduri_cititori(i));
            end if;  
            if cititor_activ(coduri_cititori(i)) = 'activ' then
                lista_cititori(coduri_cititori(i))(2) := lista_cititori(coduri_cititori(i))(2) || ' activ';
                cititor_devotat(coduri_cititori(i));
            
            elsif cititor_activ(coduri_cititori(i)) = 'inactiv' and vechime(coduri_cititori(i)) = true then
                lista_cititori(coduri_cititori(i))(2) := lista_cititori(coduri_cititori(i))(2) || ' inactiv';
                stimulare_cititor(coduri_cititori(i));
            
            elsif cititor_activ(coduri_cititori(i)) = 'inactiv' then
                lista_cititori(coduri_cititori(i))(2) := lista_cititori(coduri_cititori(i))(2) || ' inactiv';
            end if;
        end loop;
        
        for i in coduri_cititori.first..coduri_cititori.last loop
            dbms_output.put_line('Cititorul ' || lista_cititori(coduri_cititori(i))(1) || ' ' || lista_cititori(coduri_cititori(i))(2));
            dbms_output.put_line(lista_cititori(coduri_cititori(i))(4));
            dbms_output.put_line('Carti imprumutate: ');
            for j in lista_carti_imprumutate(coduri_cititori(i)).first..lista_carti_imprumutate(coduri_cititori(i)).last loop
                dbms_output.put_line(lista_carti_imprumutate(coduri_cititori(i))(j));
            end loop;
            dbms_output.new_line;
            dbms_output.put_line('-------------------------------------------------------------------');
        end loop;
        dbms_output.new_line;
        dbms_output.new_line;
        dbms_output.put_line('MARELE PREMIU SE ACORDA: ');
        dbms_output.put_line('Cititorului ' || cititor_tanar.prenume || ' ' ||cititor_tanar.nume);
        dbms_output.put_line('PREMIU: CEL MAI TANAR CITITOR');
    end afisare;
end exercitiul_14;
/


begin
    exercitiul_14.afisare();
end;
/

declare
    tanar boolean;
begin
    exercitiul_14.este_cel_mai_tanar_cititor(2, tanar);
    if tanar = true then
        dbms_output.put_line('E cel mai tanar cititor.');
    else 
        dbms_output.put_line('Nu e cel mai tanar cititor.');
    end if;
end;
/



declare
    tanar boolean;
begin
    exercitiul_14.este_cel_mai_tanar_cititor(2, tanar);
    if tanar = true then
        dbms_output.put_line('E cel mai tanar cititor.');
    else 
        dbms_output.put_line('Nu e cel mai tanar cititor.');
    end if;
end;
/

declare
    tanar boolean;
begin
    exercitiul_14.este_cel_mai_tanar_cititor(8, tanar);
    if tanar = true then
        dbms_output.put_line('E cel mai tanar cititor.');
    else 
        dbms_output.put_line('Nu e cel mai tanar cititor.');
    end if;
end;
/

begin
    dbms_output.put_line(exercitiul_14.cititor_activ(1));
end;