-- 获取数据库表的数据行
select table_name,table_rows from information_schema.tables  where TABLE_SCHEMA = 'fooc'  order by table_rows desc;