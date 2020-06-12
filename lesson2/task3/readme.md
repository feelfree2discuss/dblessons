Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.


> mysqldump -u root -p  -h 192.168.10.8 example > example.dump.sql

> mysql -u root -p -h 192.168.10.8 sample < example.dump.sql