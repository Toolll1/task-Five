create table if not exists competition (
competition_id bigint not null generated by default as identity primary key,
competition_name varchar(320) not null,
world_record int not null,
set_date date not null
);

create table if not exists sportsman  (
sportsman_id  bigint not null generated by default as identity primary key,
sportsman_name  varchar(320) not null,
rank int not null,
year_of_birth int not null,
personal_record int not null,
country varchar(320) not null
);

create table if not exists result (
competition_id bigint not null references competition(competition_id) ON DELETE CASCADE,
sportsman_id bigint not null references sportsman(sportsman_id) ON DELETE CASCADE,
result int not null,
city varchar(320) not null,
hold_date date not null
);

insert into competition (competition_name, world_record, set_date) values
('Соревнование международные', 10, '2010-05-12'),
('Соревнов международные ание №2', 15, '2015-02-15'),
('РегиональныеСоревнование №3', 5, '2015-04-20'),
('Бег', 14, '2015-02-15'),
('Соревнование №5', 15, '2023-01-05'),
('Соревнование №6региональные', 60, '2023-01-06'),
('Соревнование №7', 7, '2023-01-07'),
('Соревнование №8', 8, '2023-01-08'),
('Соревнование №9', 9, '2010-05-12'),
('международные Соревнование №10', 10, '2023-01-10'),
('Соревнование №11', 11, '2023-01-11'),
('Соревнование №12', 12, '1997-01-12'),
('Соревнование №13', 13, '2023-01-13'),
('Бег', 14, '2023-01-14'),
('Соревнование региональные №15', 15, '2023-01-15'),
('Соревнование №16', 16, '2010-05-12'),
('Соревнование №17', 17, '2010-05-15'),
('Соревнование №18', 18, '2023-01-18'),
('Соревнование №19', 19, '2023-01-19'),
('Соревнование №20', 20, '2023-01-20'),
('Соревнмеждународныеование №21', 21, '2023-01-21'),
('Соревнование №22', 22, '2023-01-22'),
('Соревнрегиональныеование №23', 23, '2023-01-23'),
('Соревнование №24', 24, '2023-01-24'),
('Соревнование №25', 25, '2010-05-15'),
('РегиональныеСоревнование №26', 26, '2023-01-26'),
('Соревнование №27', 27, '2023-01-27'),
('Соревнование №28', 28, '2023-01-28'),
('Соревнование №29', 29, '2023-01-29'),
('Бег', 30, '2010-05-15');

insert into sportsman (sportsman_name, rank, year_of_birth, personal_record, country) values
('Иванов Миша', 1, 2006, 1, 'Италия'),
('Имя2', 2, 2000, 2, 'США'),
('Имя3', 3, 1992, 3, 'Германия'),
('Имя4', 4, 1993, 4, 'Россия'),
('Имя5', 5, 2000, 5, 'США'),
('Имя6', 6, 1995, 6, 'Германия'),
('Имя7', 7, 2001, 7, 'Россия'),
('Имя8', 8, 1997, 8, 'США'),
('Имя9', 9, 1998, 9, 'Германия'),
('Иванов Имя10', 10, 1999, 10, 'Россия'),
('Имя11', 1, 1990, 11, 'Россия'),
('Мирон', 2, 2000, 12, 'Италия'),
('Маша', 3, 1996, 13, 'Германия'),
('Имя14', 4, 1979, 14, 'Россия'),
('Имя15', 5, 1994, 10, 'США'),
('Имя16', 6, 2000, 16, 'Германия'),
('Имя17', 7, 1996, 17, 'Россия'),
('Имя18', 8, 1997, 18, 'США'),
('Имя19', 9, 2001, 19, 'Германия'),
('Имя20', 10, 1979, 20, 'Россия'),
('Имя21', 1, 1990, 21, 'Россия'),
('Имя22', 2, 1991, 22, 'Италия'),
('Имя23', 3, 2000, 23, 'Германия'),
('Имя24', 4, 1993, 24, 'Россия'),
('Иванов Имя25', 5, 1994, 25, 'США'),
('Имя26', 6, 2001, 26, 'Германия'),
('Имя27', 7, 2000, 27, 'Россия'),
('Имя28', 8, 1997, 5, 'США'),
('Имя29', 9, 1998, 29, 'Германия'),
('Имя30', 10, 1997, 30, 'Россия');

insert into result (competition_id, sportsman_id, result, city, hold_date) values
(1, 30, 10, 'Москва', '2010-05-12'),
(2, 29, 9, 'Питер', '2023-02-02'),
(3, 28, 11, 'Милан', '2023-02-03'),
(4, 27, 11, 'Геленджик', '2010-05-12'),
(5, 26, 12, 'Аляска', '2023-02-05'),
(6, 25, 13, 'Бостон', '2023-02-06'),
(7, 24, 12, 'Париж', '2023-02-07'),
(8, 23, 11, 'Саратов', '2023-02-08'),
(9, 22, 21, 'Пекин', '2015-02-12'),
(10, 21, 6, 'Брюсель', '2014-04-12'),
(3, 20, 5, 'Москва', '2015-04-20'),
(12, 19, 32, 'Питер', '2010-05-12'),
(13, 18, 11, 'Милан', '2015-02-12'),
(14, 17, 31, 'Геленджик', '2012-05-20'),
(15, 16, 15, 'Аляска', '2010-05-15'),
(16, 15, 14, 'Бостон', '2012-05-20'),
(17, 14, 16, 'Париж', '2010-05-15'),
(18, 13, 17, 'Саратов', '2023-02-18'),
(19, 12, 18, 'Пекин', '2023-02-19'),
(20, 11, 19, 'Брюсель', '2014-05-12'),
(21, 10, 20, 'Москва', '2023-02-11'),
(22, 9, 7, 'Питер', '2014-05-12'),
(23, 8, 8, 'Милан', '2023-02-13'),
(24, 7, 10, 'Геленджик', '2023-02-14'),
(25, 6, 25, 'Аляска', '2023-02-15'),
(26, 5, 26, 'Бостон', '2010-05-15'),
(27, 4, 27, 'Париж', '2023-02-17'),
(28, 3, 28, 'Саратов', '2023-02-18'),
(29, 2, 29, 'Пекин', '2023-02-19'),
(30, 1, 30, 'Брюсель', '2014-05-12');

--Выдайте всю информацию о спортсменах из таблицы sportsman.
select * from sportsman;

--Выдайте наименование и мировые результаты по всем соревнованиям.
select competition_name, world_record from competition;

--Выберите имена всех спортсменов, которые родились в 1990 году.
select sportsman_name from sportsman where year_of_birth = 1990;

--Выберите наименование и мировые результаты по всем соревнованиям, установленные 12-05-2010 или 15-05-2010.
select competition_name, world_record from competition where set_date = '2010-05-12' or set_date = '2010-05-15';

--Выберите дату проведения всех соревнований, которые проводились в Москве и полученные на них результаты равны 10 секунд.
select hold_date  from result  where city = 'Москва' and result = 10;

--Выберите имена всех спортсменов, у которых персональный рекорд не равен 25 с.
select sportsman_name  from sportsman where personal_record <> 25;

--Выберите названия всех соревнований, у которых мировой рекорд равен 15 с и дата установки рекорда не равна 12-02-2015.
select competition_name from competition where world_record = 15 and set_date <> '2015-02-15';

--Выберите города проведения соревнований, где результаты принадлежат множеству {13, 25, 17, 9}.
select city from result where result in (13, 25, 17, 9);

--Выберите имена всех спортсменов, у которых год рождения 2000 и разряд не принадлежит множеству {3, 7, 9}.
select sportsman_name from sportsman where year_of_birth = 2000 and rank not in (3, 7, 9);

--Выберите дату проведения всех соревнований, у которых город проведения начинается с буквы "М".
select hold_date from result where city like 'М%';

--Выберите имена всех спортсменов, у которых имена начинаются с буквы "М" и год рождения не заканчивается на "6".
select sportsman_name  from sportsman where sportsman_name like 'М%' and year_of_birth % 10 <> 6;

--Выберите наименования всех соревнований, у которых в названии есть слово "международные".
select competition_name from competition where competition_name ilike '%международные%';

--Выберите годы рождения всех спортсменов без повторений
select distinct year_of_birth from sportsman;

--Найдите количество результатов, полученных 12-05-2014.
select count(hold_date) from result where hold_date = '2014-05-12';

--Вычислите максимальный результат, полученный в Москве.
select max(result) from result where city = 'Москва';

--Вычислите минимальный год рождения спортсменов, которые имеют 1 разряд.
select max(year_of_birth)  from sportsman where rank = 1;

--Определите имена спортсменов, у которых личные рекорды совпадают с результатами, установленными 12-04-2014
select sportsman_name from sportsman where personal_record in (select result from result where hold_date = '2014-04-12');

--Выведите наименования соревнований, у которых дата установления мирового рекорда совпадает с датой проведения соревнований в - Москве 20-04-2015.
select competition_name from competition where set_date in (select hold_date from result where city = 'Москва' and hold_date = '2015-04-20');
select c.competition_name from competition as c inner join result as r on c.competition_id = r.competition_id where c.set_date = r.hold_date and r.city = 'Москва' and r.hold_date = '2015-04-20';

--Вычислите средний результат каждого из спортсменов.
select s.sportsman_name, avg(r.result) from sportsman as s inner join result as r on s.sportsman_id = r.sportsman_id group by s.sportsman_name;

--Выведите годы рождения спортсменов, у которых результат, показанный в Москве выше среднего по всем спортсменам.
select s.year_of_birth, s.sportsman_name from sportsman as s inner join result as r on s.sportsman_id = r.sportsman_id where r.city = 'Москва' and r.result > (select avg(result) from result);

--Выведите имена всех спортсменов, у которых год рождения больше, чем год установления мирового рекорда, равного 12 с.
select sportsman_name from sportsman where year_of_birth > extract (year from cast((select min(set_date) from competition where world_record = 12) as date));

--Выведите список спортсменов в виде 'Спортсмен ' ['имя спортсмена'] 'показал результат' ['результат'] 'в городе' ['город']
select concat('Спортсмен ', s.sportsman_name, ' показал результат ', r.result, ' в городе ', r.city) AS info from sportsman as s inner join result as r on s.sportsman_id = r.sportsman_id;

--Выведите имена всех спортсменов, у которых разряд ниже среднего разряда всех спортсменов, родившихся в 2000 году.
select sportsman_name from sportsman where rank < (select avg(rank ) from sportsman where year_of_birth  = 2000);

--Выведите данные о спортсменах, у которых персональный рекорд совпадает с мировым.
select * from sportsman where personal_record in (select world_record  from competition);

--Определите количество участников с фамилией Иванов, которые участвовали в соревнованиях с названием, содержащим слово 'Региональные'.
select count(distinct s.sportsman_id)
from sportsman as s
inner join result as r on s.sportsman_id = r.sportsman_id
inner join competition as c on r.competition_id = r.competition_id
where s.sportsman_name ilike '%иванов%' and c.competition_name ilike '%региональные%';

--Выведите города, в которых были установлены мировые рекорды.
select distinct r.city from competition as c left outer join result as r on r.competition_id = r.competition_id;

--Найдите минимальный разряд спортсменов, которые установили мировой рекорд.
select min(s.rank) from sportsman as s
left outer join result as r on s.sportsman_id = r.sportsman_id
left outer join competition as c on r.competition_id = r.competition_id
where c.world_record is not null;

--Выведите названия соревнований, на которых было установлено максимальное количество мировых рекордов.
select competition_name, count(world_record)  from competition group by competition_name;

--Определите, спортсмены какой страны участвовали в соревнованиях больше всего.
select s.country, count(s.country)  from sportsman as s
left outer join result as r on s.sportsman_id = r.sportsman_id
where r.competition_id is not null
group by s.country
order by count(s.country) desc
limit 1;

--Измените разряд на 1 тех спортсменов, у которых личный рекорд совпадает с мировым.
update sportsman as s
set rank = rank + 1
where personal_record = (
    select world_record
    from competition c
    inner join result r on c.competition_id = r.competition_id
    WHERE s.sportsman_id = r.sportsman_id);

--Вычислите возраст спортсменов, которые участвовали в соревнованиях в Москве.
select sportsman_name, (2023-s.year_of_birth) as age from sportsman as s
inner join result as r on s.sportsman_id = r.sportsman_id
where r.city = 'Москва';

--Измените дату проведения всех соревнований, проходящих в Москве на 4 дня вперед.
update result set hold_date = hold_date + 4 where city = 'Москва';

--Измените страну у спортсменов, у которых разряд равен 1 или 2, с Италии на Россию.
update sportsman
set country = 'Россия'
where sportsman_id in (
select sportsman_id from sportsman where rank = 1 or rank = 2 and country = 'Италия');

--Измените название соревнований с 'Бег' на 'Бег с препятствиями'
update competition set competition_name = 'Бег с препятствиями' where competition_name = 'Бег';

--Увеличьте мировой результат на 2 с для соревнований ранее 20-03-2005
update competition set world_record = world_record + 2 where set_date < '2005-03-20';

--Уменьшите результаты на 2 с соревнований, которые проводились 20-05-2012 и показанный результат не менее 45 с.
update result set result = result + 2 where hold_date = '2012-05-20' and result >= 45;

--Удалите все результаты соревнований в Москве, участники которых родились не позже 1980 г.
delete from result
where city = 'Москве' and sportsman_id in (
select sportsman_id from sportsman where year_of_birth <= 1980);

--Удалите все соревнования, у которых результат равен 20 с.
delete from competition where world_record = 20;

--Удалите все результаты спортсменов, которые родились в 2001 году.
delete from result where sportsman_id in (select sportsman_id from sportsman where year_of_birth = 2001);
