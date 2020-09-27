# docker-mysql-test
## Usage
```
> docker-compose build
> docker-compose up -d
> docker exec -it mysql-test mysql
```

## Impremented sample tables
#### test.table1
```
mysql> DESCRIBE test.table1;
+-------+----------+------+-----+---------+----------------+
| Field | Type     | Null | Key | Default | Extra          |
+-------+----------+------+-----+---------+----------------+
| id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| key1  | char(64) | NO   |     |         |                |
| key2  | char(64) | NO   |     |         |                |
| val   | int(10)  | NO   |     | 0       |                |
+-------+----------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM test.table1;
+----+------+------+-----+
| id | key1 | key2 | val |
+----+------+------+-----+
|  1 | AAA  | AA   | 100 |
|  2 | BBB  | BB   | 200 |
|  3 | CCC  | CC   | 300 |
|  4 | DDD  | DD   | 400 |
|  5 | EEE  |      | 500 |
+----+------+------+-----+
5 rows in set (0.00 sec)
```

#### test.table2
```
mysql> DESCRIBE test.table2;
+-------+----------+------+-----+---------+----------------+
| Field | Type     | Null | Key | Default | Extra          |
+-------+----------+------+-----+---------+----------------+
| id    | int(11)  | NO   | PRI | NULL    | auto_increment |
| key1  | char(64) | NO   |     |         |                |
| key2  | char(64) | NO   |     |         |                |
| val   | int(10)  | NO   |     | 0       |                |
+-------+----------+------+-----+---------+----------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM test.table2;
+----+------+------+-----+
| id | key1 | key2 | val |
+----+------+------+-----+
|  1 | aaa  | aa   |  10 |
|  2 | bbb  | bb   |  20 |
|  3 | ccc  | cc   |  30 |
|  4 | ddd  | dd   |  40 |
|  5 | eee  |      |  50 |
+----+------+------+-----+
5 rows in set (0.00 sec)
```
