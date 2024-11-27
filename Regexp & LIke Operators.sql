create database Library;
use Library;

create table Books(
id int primary key auto_increment,
title varchar(255),
author varchar(100),
year year,
genre varchar(100));

insert into Books(id,title,author,year,genre)
values(1,"The Great Gatsby", "F. Scott Fitzgerald", 1925, "Fiction"),
(2,"Pride and Prejudice", "Jane Austen", 1913, "Romance"),
(3,"To Kill a Mockingbird", "Harper Lee", 1960, "Fiction"),
(4,"1984", "George Orwell", 1949, "Dystopian"),
(5,"Moby Dick", "Herman Melville", 1951, "Adventure");

select * from Books;

select * from Books where title like "T%";

select * from Books where author like "%son";

select * from Books where title like "%and%";

select * from Books where title like "%Bird";

select * from Books where title regexp "[A-Z]e | [A-Z]e | [A-Z]e";

select * from Books where title regexp "[0-9]";

select * from Books where author regexp "[a-j]";

select * from Books where genre regexp "fiction|adventure$";

select * from Books where title regexp "[A-Z]";

select * from books where year like "19__" and year<1950;

select * from Books where author regexp "[a-z]";

select * from Books where title regexp "p[a-z]";

select * from Books where title regexp "[^a-zA-Z0-9 ]";
