create table media_type(
media_ty_id number(10) primary key,
media_ty_name varchar2(20)
)
insert into media_type values(1,'MPEG_audio_file');
insert into media_type values(2,'Protected_AAC_audio');
insert into media_type values(3,'Pr_MPEG-4_audio');
insert into media_type values(4,'Purchased_AAC_audio');
insert into media_type values(5,'AAC_audio_file');
insert into media_type values(6,'MP4_audio');
insert into media_type values(7,'MP3_audio');
insert into media_type values(8,'AUDIO_144p');
insert into media_type values(9,'AUDIO_240p');
insert into media_type values(10,'AUDIO_360p');
insert into media_type values(11,'AUDIO_240p');
insert into media_type values(12,'MPEG_audio_file');
insert into media_type values(13,'Purchased_AAC_audio');
insert into media_type values(14,'AUDIO_144p');
insert into media_type values(15,'MP4_audio');
insert into media_type values(16,'AAC_audio_file');
insert into media_type values(17,'Pr_MPEG-4_audio');
insert into media_type values(18,'AUDIO_360p');
insert into media_type values(19,'MP3_audio');
insert into media_type values(20,'MP4_audio');
select * from media_type;
commit;

create table genre(
genre_id number(10) primary key,
genre_name varchar2(20)
)
insert into genre values(10,'Pop');
insert into genre values(20,'Rock');
insert into genre values(30,'Hip Hop');
insert into genre values(40,'Jazz');
insert into genre values(50,'Country');
insert into genre values(60,'Rnull');
insert into genre values(70,'Electronic');
insert into genre values(80,'Classical');
insert into genre values(90,'Reggae');
insert into genre values(100,'Metal');
insert into genre values(110,'Folk');
insert into genre values(120,'Blues');
insert into genre values(130,'Indie');
insert into genre values(140,'Alternative');
insert into genre values(150,'Soul');
insert into genre values(160,'Punk');
insert into genre values(170,'World');
insert into genre values(180,'Dance');
insert into genre values(190,'Gospel');
insert into genre values(200,'Funk');

commit;
select * from genre;

create table artists(
artist_id number(10) primary key,
artist_name varchar2(20),
artist_country varchar2(20),
genre_id number(10),
constraints g_fk foreign key (genre_id)
references genre(genre_id)
);
insert into artists values(1,'Arijit Singh','India',50);
insert into artists values(2,'Neha Kakkar','India',20);
insert into artists values(3,'Beyonce','America',10);
insert into artists values(4,'Celine Dion','Canada',90);
insert into artists values(5,'Ariana Grande','Italy',30);
insert into artists values(6,'Shakira','Colombia',60);
insert into artists values(7,'Amy winehouse','Britan',70);
insert into artists values(8,'Taylor Swift','America',40);
insert into artists values(9,'Darshan Rawal','India',80);
insert into artists values(10,'Tata McRae','Colombia',100);
insert into artists values(11,'Billie Eilish','Italy',120);
insert into artists values(12,'Adele','Canada',130);
insert into artists values(13,'Mariah Carey','Britan',150);
insert into artists values(14,'Shreya Ghoshal','India',110);
insert into artists values(15,'Kishore Kumar','India',140);
insert into artists values(16,'Arman Malik','India',190);
insert into artists values(17,'Amit Mishra','India',160);
insert into artists values(18,'Kim Woo seok','Corea',180);
insert into artists values(19,'Jonghyun','Corea',170);
insert into artists values(20,'Heize','Corea',200);
commit;
select * from artists;

create table albums(
album_id number(10) primary key,
title varchar2(20),
released_date varchar2(20),
artist_id number(10),
constraints art_fk foreign key (artist_id)
references artists(artist_id)
);
insert into albums values(101,'The Archies','22-11-2023',1);
insert into albums values(102,'Gali Gali','23-12-2018',2);
insert into albums values(103,'Cowboy Carter','29-03-2024',3);
insert into albums values(104,'A New Day Has Come','22-03-2002',4);
insert into albums values(105,'Sweetener','17-08-2018',5);
insert into albums values(106,'EI Dorado','27-10-2017',6);
insert into albums values(107,'Back to Black','20-10-2006',7);
insert into albums values(108,'Lover','23-08-2019',8);
insert into albums values(109,'Loveyatri','03-10-2018',9);
insert into albums values(110,'Too Young Be Sad','26-03-2021',10);
insert into albums values(111,'Happier Than Ever','30-07-2021',11);
insert into albums values(112,'1988','17-12-2008',12);
insert into albums values(113,'Rainbow','21-08-1995',13);
insert into albums values(114,'Rab ne bana di jodi','12-12-2008',14);
insert into albums values(115,'Guru Guru','24-02-1989',15);
insert into albums values(116,'Chale Aana','02-05-2019',16);
insert into albums values(117,'Teri Saanson Mein','17-01-2014',17);
insert into albums values(118,'3rd Desire','07-03-2022',18);
insert into albums values(119,'She Is','24-05-2016',19);
insert into albums values(120,'Last Winter','07-12-2023',20);
select * from albums;
commit;
update albums 
set artist_id=10 where album_id=115;
update albums 
set artist_id=10 where album_id=120;
update albums 
set artist_id=9 where album_id=102;
commit;
select * from albums;

create table tracks(
track_id number(10) primary key,
track_name varchar2(20),
composer varchar2(20),
genre_id number(10),
media_ty_id number(10),
album_id number(10),
constraints gr_fk foreign key(genre_id)
references genre(genre_id),
constraints me_fk foreign key (media_ty_id)
references media_type(media_ty_id),
constraints alb_fk foreign key(album_id)
references albums(album_id)
);
insert into tracks values(1,'I Love You','Abhiman Roy',10,1,101);
insert into tracks values(2,'Ram Siya Ram','Ajay-Atul',20,2,102);
insert into tracks values(3,'O Khuda','Amaal Malik',30,3,103);
insert into tracks values(4,'London Thumakada','Amit Trivedi',40,4,104);
insert into tracks values(5,'Nain Mile Nain','Anil Biswas',50,5,105);
insert into tracks values(6,'Sheher Ki Ladaki','Anand Milind',60,6,106);
insert into tracks values(7,'Soul Of Varisu','A.R.Rahman',70,7,107);
insert into tracks values(8,'King of The Sea','Santosh Narayan',80,8,108);
insert into tracks values(9,'Timeless Love','Yuvan Shankar Raja',90,9,109);
insert into tracks values(10,'O Sukamri','Harris Jayraj',100,10,110);
insert into tracks values(11,'Hey Asman Reaction','G V Prakash Kumar',110,11,111);
insert into tracks values(12,'Bole Wahi','D Imman',120,12,112);
insert into tracks values(13,'Happy New Year','Vidyasagar',130,13,113);
insert into tracks values(14,'Mr Perfect','Devi Sri Prasad',140,14,114);
insert into tracks values(15,'Main Tera Boyfriend','Meet Bross',150,15,115);
insert into tracks values(16,'Sanam re','Mithoon Sharma',160,16,116);
insert into tracks values(17,'Sawariya','Monty Sharma',170,17,117);
insert into tracks values(18,'Abhas Ha','Nilesh Moharir',180,18,118);
insert into tracks values(19,'Tarif Karu Kya Uski','O P Nayyar',190,19,119);
insert into tracks values(20,'Tum Sundar Ho','Raj Kamal',200,20,120);
select * from tracks;
commit;

create table playlist(
playlist_id number(10) primary key,
music_type varchar2(20)
);
insert into playlist values(1,'Classical');
insert into playlist values(2,'Popular music');
insert into playlist values(3,'Rock');
insert into playlist values(4,'Pop music');
insert into playlist values(5,'Hip hop');
insert into playlist values(6,'Electronic');
insert into playlist values(7,'Jazz');
insert into playlist values(8,'Blues');
insert into playlist values(9,'Folk');
insert into playlist values(10,'Country music');
insert into playlist values(11,'Heavy metal');
insert into playlist values(12,'Dance music');
insert into playlist values(13,'Soul music');
insert into playlist values(14,'Funk');
insert into playlist values(15,'World music');
insert into playlist values(16,'Punk rock');
insert into playlist values(17,'Disco');
insert into playlist values(18,'Singing');
insert into playlist values(19,'rock and roll');
insert into playlist values(20,'Indie rock');

commit;
select * from playlist;

create table playlist_track(
playlist_id number(10),
track_id number(10),
constraints pl_fk foreign key (playlist_id)
references playlist(playlist_id),
constraints tr_fk foreign key (track_id)
references  tracks(track_id)
);
select * from tracks;
insert into playlist_track values(1,1);
insert into playlist_track values(2,2);
insert into playlist_track values(3,3);
insert into playlist_track values(4,4);
insert into playlist_track values(5,5);
insert into playlist_track values(6,6);
insert into playlist_track values(7,7);
insert into playlist_track values(8,8);
insert into playlist_track values(9,9);
insert into playlist_track values(10,10);
insert into playlist_track values(11,11);
insert into playlist_track values(12,12);
insert into playlist_track values(13,13);
insert into playlist_track values(14,14);
insert into playlist_track values(15,15);
insert into playlist_track values(16,16);
insert into playlist_track values(17,17);
insert into playlist_track values(18,18);
insert into playlist_track values(19,19);
insert into playlist_track values(20,20);
select * from playlist_track;
commit;
drop table employees;
create table employees(
employee_id number(10) primary key,
first_name varchar2(20),
last_name varchar2(20),
mail varchar2(20),
job_title varchar2(20),
manager_id number(10),
phone number(10),
hire_date varchar2(20),
country varchar2(20),
state varchar2(20),
city varchar2(20)
)
insert into employees (employee_id,first_name,last_name,mail,job_title,phone,hire_date,country,state,city)
values(1001,'Vrushali','Nanekar','Vnanekar','IT_PROG',9552736454,'23-09-2020','India','Maharashtra','Pune');
insert into employees values(1002,'Anamika','Kharat','Akharat','PROF',1001,8756789489,'22-06-2019','India','Maharashtra','Nashik');
insert into employees values(1003,'Vijay','Chavan','Vchavan','IT_PROG',1002,8888656642,'22-03-2020','India','Maharashtra','Pune');
insert into employees values(1004,'Gauri','More','Gmore','HR',1003,8456897890,'12-09-2020','India','Maharashtra','Nagar');
insert into employees values(1005,'Khushi','Nanekar','Knanekar','Er',1004,7867569800,'2-10-2020','India','Maharashtra','Nagar');
insert into employees values(1006,'Pooja','Gade','Pgade','ACCT',1005,7865453267,'12-11-2020','India','Maharashtra','Nagpur');
insert into employees values(1007,'Priyanka','Pandhare','Ppandhare','NURSE',1006,8080877890,'1-12-2020','India','Maharashtra','Sambhajinagar');
insert into employees values(1008,'Rutuja','Dudhade','Rdudhade','AC_MGR',1007,8656767798,'12-02-2021','India','Maharashtra','Nagpur');
insert into employees values(1009,'Shital','Shinde','Sshinde','PU_MAN',1008,8867453245,'28-02-2021','India','Maharashtra','Baramati');
insert into employees values(1010,'Pooja','Nanekar','Pnanekar','AD_PRES',1009,7028358409,'12-03-2021','India','Maharashtra','Nagpur');
insert into employees values(1011,'Ganesh','Nanekar','Gnanekar','AD_VP',1010,7218404167,'25-03-2021','India','Maharashtra','Thane');
insert into employees values(1012,'Avni','Shinde','Ashinde','SA_MAN',1011,8999897890,'31-03-2021','India','Maharashtra','Solapur');
insert into employees values(1013,'Nikita','Mate','Nmate','PU_CLERK',1012,9089765432,'10-04-2021','India','Maharashtra','Nagar');
insert into employees values(1014,'Sakshi','Shinde','Sshinde','ST_MAN',1013,8859898790,'20-04-2021','India','Maharashtra','Pune');
insert into employees values(1015,'Sai','Nanekar','Snanekar','IT_PROG',1014,9923606330,'28-04-2021','India','Maharashtra','Pune');
insert into employees values(1016,'Pratiksha','Shelake','Pshelake','AD_VP',1015,8956895690,'1-05-2021','India','Maharashtra','Baramati');
insert into employees values(1017,'Shreyas','Jadhav','Sjadhav','PU_CLERK',1016,7786543456,'12-05-2021','India','Maharashtra','Nagar');
insert into employees values(1018,'Gauri','Patil','Gpatil','ST_MAN',1017,8756457860,'29-05-2021','India','Maharashtra','Amaravati');
insert into employees values(1019,'Sayali','Kolase','Skolase','IT_PROG',1018,906797490,'1-06-2021','India','Maharashtra','Pune');
insert into employees values(1020,'Sagar','Bhakare','Sbhakare','ACCT',1019,8456789890,'12-06-2021','India','Maharashtra','Nagar');

select * from employees;
commit;

create table customers(
customer_id number(10) primary key,
employee_id number(10),
c_first_name varchar2(20),
c_last_name varchar2(20),
c_city varchar2(20),
c_state varchar2(20),
c_country varchar2(20),
c_phone number(10),
c_email varchar2(20),
constraints emp_fk foreign key (employee_id)
references employees(employee_id)
);
insert into customers values(1,1001,'Prajakta','Kale','Nagar','Maharashtra','India',8978678923,'Pkale');
insert into customers values(2,1002,'Prtik','Jadhav','Pune','Maharashtra','India',9077908963,'Pjadhav');
insert into customers values(3,1003,'Nikhil','Tanpure','Nagpur','Maharashtra','India',8098765478,'Ntanpure');
insert into customers values(4,1004,'Akshay','Nanekar','Pune','Maharashtra','India',8999630723,'Ananekar');
insert into customers values(5,1005,'Shrikant','Nalkar','Nagar','Maharashtra','India',9552735423,'Snalkar');
insert into customers values(6,1006,'Arati','Patil','Solapur','Maharashtra','India',9878878923,'Apatil');
insert into customers values(7,1007,'Rahul','Kharat','Nagar','Maharashtra','India',9078657823,'Rkharat');
insert into customers values(8,1008,'Amol','Chavan','Nagpur','Maharashtra','India',9976878725,'Achavan');
insert into customers values(9,1009,'Saisha','Patil','Pune','Maharashtra','India',8778698690,'Spatil');
insert into customers values(10,1010,'Neelima','Chavan','Nagar','Maharashtra','India',8888656642,'Nchavan');
insert into customers values(11,1011,'Pooja','Jagtap','Pune','Maharashtra','India',7865785467,'Pjagtap');
insert into customers values(12,1012,'Priti','Darekar','Nagar','Maharashtra','India',9972374923,'Pdarekar');
insert into customers values(13,1013,'Ninad','Yewale','Solapur','Maharashtra','India',8999678903,'Nyewale');
insert into customers values(14,1014,'Yash','Shahane','Nagar','Maharashtra','India',7778678890,'Yshahane');
insert into customers values(15,1015,'Skashi','Khatane','Nashik','Maharashtra','India',8767895678,'Skhatane');
insert into customers values(16,1016,'Shravani','Dherange','Pune','Maharashtra','India',8760987658,'Sdherange');
insert into customers values(17,1017,'Rimzim','Pande','Smbhajinagr','Maharashtra','India',8689056823,'Rpande');
insert into customers values(18,1018,'Disha','Satpute','Nagar','Maharashtra','India',8085668020,'Dsatpute');
insert into customers values(19,1019,'Pratiksha','Warale','Pune','Maharashtra','India',8989765467,'Pwarale');
insert into customers values(20,1020,'Kishori','Gade','Nagar','Maharashtra','India',8754378923,'Kgade');
select * from customers;

create table invoices(
invoice_id number(10) primary key,
customer_id number(10),
total_bill number(10),
invoice_date varchar2(20),
billing_country varchar2(20),
billing_state varchar2(20),
constraints cu_fk foreign key(customer_id) 
references customers(customer_id)
);
insert into invoices values(10,1,20000,'07-02-2020','India','MH');
insert into invoices values(20,2,15000,'17-03-2020','India','MH');
insert into invoices values(30,3,22000,'20-04-2020','India','MH');
insert into invoices values(40,4,10000,'07-10-2020','India','MH');
insert into invoices values(50,5,17000,'10-11-2020','India','MH');
insert into invoices values(60,6,18000,'20-12-2020','India','MH');
insert into invoices values(70,7,20000,'01-01-2021','India','MH');
insert into invoices values(80,8,12000,'07-02-2021','India','MH');
insert into invoices values(90,9,20000,'14-03-2021','India','MH');
insert into invoices values(100,10,25000,'20-04-2021','India','MH');
insert into invoices values(110,11,23000,'04-05-2021','India','MH');
insert into invoices values(120,12,35000,'17-05-2021','India','MH');
insert into invoices values(130,13,30000,'07-06-2021','India','MH');
insert into invoices values(140,14,17000,'29-07-2021','India','MH');
insert into invoices values(150,15,22000,'07-08-2021','India','MH');
insert into invoices values(160,16,25000,'07-02-2022','India','MH');
insert into invoices values(170,17,28000,'17-08-2022','India','MH');
insert into invoices values(180,18,13000,'07-10-2022','India','MH');
insert into invoices values(190,19,34000,'17-12-2022','India','MH');
insert into invoices values(200,20,20000,'07-02-2023','India','MH');
select * from invoices;
commit;

create table invoice_line(
invoice_line_id number(10) primary key,
unit_price number(10),
quantity number(10),
invoice_id number(10),
track_id number(10),
constraints in_fk foreign key (invoice_id)
references invoices (invoice_id),
constraints tra_fk foreign key(track_id)
references tracks(track_id)
);
INSERT INTO invoice_line VALUES (1, 0.99, 1, 10, 1);
INSERT INTO invoice_line  VALUES (2, 1.29, 1, 10, 2);
INSERT INTO invoice_line values (3, 0.99, 1, 20, 3);
INSERT INTO invoice_line  VALUES (4, 1.29, 1, 20, 4);
INSERT INTO invoice_line  VALUES (5, 0.99, 1, 30, 5);
INSERT INTO invoice_line  VALUES (6, 1.29, 1, 30, 6);
INSERT INTO invoice_line VALUES (7, 0.99, 1, 40, 7);
INSERT INTO invoice_line  VALUES (8, 1.29, 1, 40, 8);
INSERT INTO invoice_line VALUES (9, 0.99, 1, 50, 9);
INSERT INTO invoice_line  VALUES (10, 1.29, 1, 50, 10);
INSERT INTO invoice_line  VALUES (11, 0.99, 1, 60, 11);
INSERT INTO invoice_line  VALUES (12, 1.29, 1, 60, 12);
INSERT INTO invoice_line  VALUES (13, 0.99, 1, 70, 13);
INSERT INTO invoice_line  VALUES (14, 1.29, 1, 70, 14);
INSERT INTO invoice_line  VALUES (15, 0.99, 1, 80, 15);
INSERT INTO invoice_line  VALUES (16, 1.29, 1, 80, 16);
INSERT INTO invoice_line  VALUES (17, 0.99, 1, 90, 17);
INSERT INTO invoice_line  VALUES (18, 1.29, 1, 90, 18);
INSERT INTO invoice_line  VALUES (19, 0.99, 1, 100, 19);
INSERT INTO invoice_line  VALUES (20, 1.29, 1, 100, 20);
drop table invoice_line;
select * from invoices;
select * from invoice_line;
update invoice_line
set quantity=3 where track_id=19;
update invoice_line
set quantity=2 where track_id=15;
update invoice_line
set quantity=3 where track_id=1;
update invoice_line
set quantity=4 where track_id=13;

commit;

