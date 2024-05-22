# [Анализ данных о пользователях группы VK](https://github.com/Ursekov/MIPT_SF_DATA_SCIENCE/tree/main/Project%200)

## Оглавление  
[1. Описание проекта](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D0%BE%D0%BF%D0%B8%D1%81%D0%B0%D0%BD%D0%B8%D0%B5-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%B0)  
[2. Краткая информация о данных](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D0%BA%D1%80%D0%B0%D1%82%D0%BA%D0%B0%D1%8F-%D0%B8%D0%BD%D1%84%D0%BE%D1%80%D0%BC%D0%B0%D1%86%D0%B8%D1%8F-%D0%BE-%D0%B4%D0%B0%D0%BD%D0%BD%D1%8B%D1%85)  
[3. Этапы работы над проектом](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D1%8D%D1%82%D0%B0%D0%BF%D1%8B-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%8B-%D0%BD%D0%B0%D0%B4-%D0%BF%D1%80%D0%BE%D0%B5%D0%BA%D1%82%D0%BE%D0%BC)  


### Описание проекта    
Целью проекта является сбор, хранение и анализ данных о пользователях группы VK.

Репозиторий разделен на 5 папок:

В [первой папке]() находится скрипт на Python для выгрузки данных из VK с помощью API.

Во [второй папке]() находится скрипт для загрузки данных в БД Clickhouse и анализ данных с помощью SQL скриптов.

В [третьей папке]() находится SQL файл со скриптами.

В [четвертой папке]() находятся CSV файлы со скачанными данными.

В [пятой папке]() находятся полученные графики.

База данных развернута локально на машине с применением Docker с помощью следующей команды:

"docker run -d --name clickhouse-server -p 8123:8123 -p 9000:9000 yandex/clickhouse-server"

:arrow_up:[к оглавлению](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D0%BE%D0%B3%D0%BB%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5)


### Краткая информация о данных
Данные представлены в следующем формате:
1. user_id_vk
2. name
3. fullname
4. last_seen
5. contacts
6. friends_count
7. town

  
:arrow_up:[к оглавлению](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D0%BE%D0%B3%D0%BB%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5)


### Этапы работы над проектом  
1. Выгрузка данных;
2. Обработка данных;
3. Загрузка данных в БД Clickhouse;
4. Анализ данных.

:arrow_up:[к оглавлению](https://github.com/Ursekov/HH-Data-Processing?tab=readme-ov-file#%D0%BE%D0%B3%D0%BB%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5)#   V K _ A P I  
 