Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

> mysqldump -u root -p -h 192.168.10.8 --opt --where="1 limit 100" mysql help_keyword > task4.dump.sql