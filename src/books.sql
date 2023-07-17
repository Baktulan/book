create table publishers(
                           id serial primary key,
                           name varchar
);
create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');
create type Gender as enum ('Female','Male');
create table books(
                      id serial primary key,
                      name varchar,
                      country varchar,
                      published_year date,
                      price numeric,
                      Genre Genre
);
drop table books cascade ;

create table authors(
                        id serial primary key,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar ,
                        Gender Gender
);
drop  table authors cascade ;
create table languages(
                          id serial primary key,
                          language varchar
);
alter table languages alter column language set not null;
alter table authors ADD CONSTRAINT constraint_name unique (email);
alter table books add column language_name int references languages(id);
alter table books rename  column language_name to language_id;
alter table books add column price int;
alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);
insert into publishers(name)
values('RELX Group'),
      ('Thomson Reuters'),
      ('Holtzbrinck Publishing Group'),
      ('Shanghai Jiao Tong University Press'),
      ('Wolters Kluwer'),
      ('Hachette Livre'),
      ('Aufbau-Verlag'),
      ('Macmillan'),
      ('Harper Collins'),
      ('China Publishing Group'),
      ('Springer Nature'),
      ('Grupo Planeta'),
      ('Books.Ru Ltd.St Petersburg'),
      ('The Moscow Times'),
      ('Zhonghua Book Company');
INSERT INTO authors(first_name, last_name, email, date_of_birth, country, gender)
VALUES ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '9/10/1968', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '10/11/1965', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '5/6/1980', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '4/4/1964', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '7/3/1967', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '12/2/1964', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '12/11/1983', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1/9/1960', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '11/7/1978', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '9/8/1962', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '12/3/1984', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '8/8/1983', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '3/8/1980', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '8/5/1966', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '10/7/1962', 'United States', 'Female');
INSERT INTO languages(language)
VALUES ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');
insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values ('Taina', 'Russia', '11/12/2021', '568', 'DETECTIVE', '5', '12', '6'),
       ('Zvezdopad', 'Russia', '12/9/2004', '446', 'ROMANCE', '5', '13', '11'),
       ('Homo Faber', 'Germany', '4/10/2022', '772', 'FANTASY', '3', '5', '3'),
       ('Der Richter und Sein Henker', 'Germany', '2/1/2011', '780', 'DETECTIVE', '3', '3', '10'),
       ('Lord of the Flies', 'United States', '7/11/2015', '900', 'FANTASY', '1', '2', '4'),
       ('Un soir au club', 'France', '1/12/2018', '480', 'DRAMA', '2', '1', '1'),
       ('Voina', 'Russia', '12/6/2004', '880', 'HISTORY', '5', '4', '13'),
       ('Sun Tzu', 'China', '9/5/2022', '349', 'HISTORY', '4', '4', '2'),
       ('Emil und die Detektive', 'Germany', '6/11/2010', '228', 'DETECTIVE', '3', '5', '10'),
       ('Coule la Seine', 'France', '3/1/2015', '732', 'FANTASY', '2', '6', '1'),
       ('Love and hatred', 'Russia', '2/3/2012', '763', 'ROMANCE', '5', '14', '13'),
       ('Fantastic Mr Fox', 'United States', '3/10/2018', '309', 'FANTASY', '1', '9', '8'),
       ('Contes de la Bécasse', 'France', '10/5/2019', '378', 'ROMANCE', '2', '6', '9'),
       ('“The Death of Ivan Ilyich', 'Russia', '9/4/2000', '814', 'DRAMA', '5', '6', '6'),
       ('Bonjour Tristesse', 'France', '8/2/2015', '502', 'ROMANCE', '2', '8', '5'),
       ('Die Verwandlung', 'Germany', '6/9/2008', '305', 'DETECTIVE', '3', '7', '12'),
       ('The Inspector Barlach Mysteries', 'Germany', '3/10/2007', '566', 'DETECTIVE', '3', '3', '3'),
       ('LÉtranger', 'France', '11/4/2017', '422', 'ROMANCE', '2', '8', '5'),
       ('Lao Tse', 'China', '7/6/2005', '900', 'FANTASY', '4', '4', '2'),
       ('Semya', 'Russia', '4/12/2004', '194', 'DRAMA', '5', '13', '11'),
       ('Empty World', 'United States', '1/4/2008', '324', 'FANTASY', '1', '11', '15'),
       ('Domainer', 'Germany', '1/6/2020', '420', 'ROMANCE', '3', '5', '10'),
       ('The Fault in Our Stars', 'United States', '2/3/2008', '396', 'ROMANCE', '1', '9', '4'),
       ('Die R uber', 'Germany', '6/5/2020', '300', 'ROMANCE', '3', '7', '12'),
       ('Jung Chang', 'China', '5/4/2021', '600', 'HISTORY', '4', '10', '7'),
       ('Les Aventures de Tintin', 'France', '4/10/2015', '582', 'DRAMA', '2', '1', '5'),
       ('Unvollendete Geschichte', 'Germany', '12/12/2010', '269', 'DETECTIVE', '3', '5', '10'),
       ('Amy Tan', 'China', '1/9/2023', '486', 'DRAMA', '4', '4', '7'),
       ('Krasnaya luna', 'Russia', '2/7/2020', '550', 'FANTASY', '5', '12', '11'),
       ('Emma', 'United States', '10/11/2021', '599', 'BIOGRAPHY', '1', '2', '15');
--1
select books.name , books.published_year, books.genre from books;
--2
select distinct authors.country from authors;
--3
select books.name , books.published_year from books where published_year between '1-01-2020' and '12-31-2023';
--4
select books.name , books.genre from books where Genre='DETECTIVE';
--5
select authors.first_name || ' ' || authors.last_name as author  from authors;
--6
select authors.first_name ,authors.country from authors where country='Germany' or country='France' order by authors.first_name;
--7
select books.name,books.country,books.published_year,books.price,books.genre from books where  Genre<>'ROMANCE' and books.price<500;
--8
select * from authors where authors.Gender='Female' limit 3;
--9
select * from authors where authors.Gender='Female' and  authors.email like '%com' and authors.first_name like '____';
--10
select authors.country , count(authors) as countofauhtors from authors group by authors.country;
--11
select authors.country from authors group by  authors.country having count(authors)=3 order by authors.country;
--12
select books.Genre ,count(books.Genre) from books group by books.Genre;;
--13
select books .Genre,  min(books.price) as minprice from books where Genre='ROMANCE' or Genre='DETECTIVE' group by books .Genre;
--14
select books.Genre, count(*) from books where Genre='HISTORY' or Genre='BIOGRAPHY' group by books.Genre;
--15
select publishers.name as publishers , languages.language from books inner join publishers on books.publisher_id=publishers.id inner join languages on books.language_id=languages.id group by publishers.name, languages.language;
--16
select authors.first_name,authors.last_name,authors.email,authors.Gender,authors.date_of_birth,authors.country,publishers.name
from books right join authors on books.author_id=authors.id left join publishers on books.publisher_id=publishers.id group by authors.first_name, authors.last_name, authors.email, authors.Gender, authors.date_of_birth, authors.country, publishers.name;
--17
select authors.first_name || ' ' || authors.last_name  as Author , books.name from books right join authors on books.author_id=authors.id group by Author,books.name;
--18
select languages.language, count(books) as bookcount from books inner join languages on books.language_id=languages.id group by  languages.language order by bookcount;
--19
select publishers.name ,round(avg(books.price)) from books inner join publishers on books.publisher_id=publishers.id group by publishers.name;
--20
select books.name ,books.published_year, authors.first_name,authors.last_name from books inner join authors on books.author_id=books.author_id where books.published_year between '1-01-2010'and '12-31-2015';
--21
select authors.first_name,authors.last_name, sum(books.price)  from books  inner join authors  on books.author_id=authors.id group by authors.first_name, authors.last_name;
