CREATE TABLE IF NOT EXISTS vk_fishing (
    user_id_vk UInt64
    ,fullname String
    ,name String
    ,last_seen DateTime
    ,contacts String
    ,friends_count UInt32
    ,town Int64
    ,age Int32
    ,PRIMARY KEY (user_id_vk)
) ENGINE = MergeTree()
ORDER BY user_id_vk;


CREATE TABLE IF NOT EXISTS city (
    city_id Int64
    ,name String
    ,PRIMARY KEY(city_id)
) ENGINE = MergeTree()
ORDER BY city_id;


INSERT INTO vk_fishing VALUES /*значения можно скачать как из CSV файла, так и есть python скрипт, который заполняет БД*/

INSERT INTO city VALUES /*значения можно скачать как из CSV файла, так и есть python скрипт, который заполняет БД*/

/*Топ - 5 самых популярных имен (fullname)*/
SELECT fullname
    ,count(fullname) 
FROM vk_fishing vf
GROUP BY fullname
ORDER BY count(*) DESC
LIMIT 5;

/*Топ - 5 самых популярных имен (name)*/
SELECT name
    ,count(name) 
FROM vk_fishing vf
GROUP BY name
ORDER BY count(*) DESC
LIMIT 5;
                
/*Диаграммы рассеяния - Сколько лет (Кол-во друзей)*/
SELECT age 
    ,round(avg(friends_count)) AS avg_friends
FROM vk_fishing
WHERE age <> 0
GROUP BY age
ORDER BY age;
               
               
/*Выдать топ-3 города, в которых среднее кол-во друзей участников группы самое наибольшее*/
SELECT c.name AS City
    ,count(c.name) AS repetitions_of_city
    ,sum(friends_count) AS Sum_Friends
    ,round(Sum_Friends / count(c.name)) AS AVG_Friends 
FROM city c JOIN vk_fishing vf 
ON vf.town = c.city_id
WHERE vf.town <> -1
GROUP BY City
ORDER BY AVG_Friends DESC
LIMIT 3;
                       
                       
/*Какой город самый часто встречаемый у участников этой группы*/
SELECT c.name AS City
    ,count(c.name) AS repetitions_of_city
FROM vk_fishing vf 
JOIN city c ON vf.town = c.city_id
WHERE vf.town <> -1
GROUP BY City
ORDER BY repetitions_of_city DESC
LIMIT 1;