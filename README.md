## JDBC и Hibernate. Практика:

### JDBC:
- создать в БД тестовую таблицу (например User c 5-6 полями разного типа).
Настроить коннекшен из Java-приложения к БД с помощью JDBC-драйвера.
Применив паттерн DAO, реализовать на JDBC операции по работе с таблицей User: создание записи, обновление записи, удаление записи, получение записи по id, получение списка записей (причем с фильтрацией по полям и с пагинацией).

### Hibernate:
- Создать отдельное Java-приложение, которое подключается к той же БД (таблица User), но уже с помощью Hibernate.
Применив паттерн DAO, реализовать на Hibernate операции по работе с таблицей User: создание записи, обновление записи, удаление записи, получение записи по id, получение списка записей (причем с фильтрацией по полям и с пагинацией).
Для каждой из операций должно быть две реализации: с использованием Criteria API и с использованием HQL (Hibernate Query Language).


## РСУБД и SQL. Практика

1. Установить PostgreSQL
 
2. Создать базу данных со следующей схемой:
В таблице competition хранится информация о проводимых соревнованиях:
- competition_id (ID соревнования);
- competition_name (наименование соревнования);
- world_record (мировой рекорд);
- set_date (дата установки мирового рекорда);
В таблице result хранится информация  о результатах соревнований:
- competition_id (ID соревнования);
- sportsman_id (ID спортсмена);
- result (результат спортсмена);
- city (место проведения);
- hold_date (дата проведения);
В таблице sportsman хранится информация о спортсменах:
- sportsman_id (ID спортсмена);
- sportsman_name (имя спортсмена);
- rank (разряд спортсмена);
- year_of_birth (год рождения);
- personal_record (персональный рекорд);
- country (страна спортсмена);
 
3. Заполните таблицы тестовыми данными с помощью команды INSERT (по 20-30 записей).
 
4. Для данной бд разработать следующие запросы:
- Выдайте всю информацию о спортсменах из таблицы sportsman.
- Выдайте наименование и мировые результаты по всем соревнованиям.
- Выберите имена всех спортсменов, которые родились в 1990 году.
- Выберите наименование и мировые результаты по всем соревнованиям, установленные 12-05-2010 или 15-05-2010.
- Выберите дату проведения всех соревнований, которые проводились в Москве и полученные на них результаты равны 10 секунд.
- Выберите имена всех спортсменов, у которых персональный рекорд не равен 25 с.
- Выберите названия всех соревнований, у которых мировой рекорд равен 15 с и дата установки рекорда не равна 12-02-2015.
- Выберите города проведения соревнований, где результаты принадлежат множеству {13, 25, 17, 9}.
- Выберите имена всех спортсменов, у которых год рождения 2000 и разряд не принадлежит множеству {3, 7, 9}.
- Выберите дату проведения всех соревнований, у которых город проведения начинается с буквы "М".
- Выберите имена всех спортсменов, у которых имена начинаются с буквы "М" и год рождения не заканчивается на "6".
- Выберите наименования всех соревнований, у которых в названии есть слово "международные".
- Выберите годы рождения всех спортсменов без повторений.
- Найдите количество результатов, полученных 12-05-2014.
- Вычислите максимальный результат, полученный в Москве.
- Вычислите минимальный год рождения спортсменов, которые имеют 1 разряд.
- Определите имена спортсменов, у которых личные рекорды совпадают с результатами, установленными 12-04-2014.
- Выведите наименования соревнований, у которых дата установления мирового рекорда совпадает с датой проведения соревнований в - Москве 20-04-2015.
- Вычислите средний результат каждого из спортсменов.
- Выведите годы рождения спортсменов, у которых результат, показанный в Москве выше среднего по всем спортсменам.
- Выведите имена всех спортсменов, у которых год рождения больше, чем год установления мирового рекорда, равного 12 с.
- Выведите список спортсменов в виде 'Спортсмен ' ['имя спортсмена'] 'показал результат' ['результат'] 'в городе' ['город']
- Выведите имена всех спортсменов, у которых разряд ниже среднего разряда всех спортсменов, родившихся в 2000 году.
- Выведите данные о спортсменах, у которых персональный рекорд совпадает с мировым.
- Определите количество участников с фамилией Иванов, которые участвовали в соревнованиях с названием, содержащим слово 'Региональные'.
- Выведите города, в которых были установлены мировые рекорды.
- Найдите минимальный разряд спортсменов, которые установили мировой рекорд.
- Выведите названия соревнований, на которых было установлено максимальное количество мировых рекордов.
- Определите, спортсмены какой страны участвовали в соревнованиях больше всего.
- Измените разряд на 1 тех спортсменов, у которых личный рекорд совпадает с мировым.
- Вычислите возраст спортсменов, которые участвовали в соревнованиях в Москве.
- Измените дату проведения всех соревнований, проходящих в Москве на 4 дня вперед.
- Измените страну у спортсменов, у которых разряд равен 1 или 2, с Италии на Россию.
- Измените название соревнований с 'Бег' на 'Бег с препятствиями'
- Увеличьте мировой результат на 2 с для соревнований ранее 20-03-2005.
- Уменьшите результаты на 2 с соревнований, которые проводились 20-05-2012 и показанный результат не менее 45 с.
- Удалите все результаты соревнований в Москве, участники которых родились не позже 1980 г.
- Удалите все соревнования, у которых результат равен 20 с.
- Удалите все результаты спортсменов, которые родились в 2001 году.

