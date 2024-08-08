SELECT
    table_name
FROM
    user_tables;
BEGIN
    FOR X IN (SELECT
        table_name
    FROM
        user_tables
    ) loop
        execute immediate ' DROP TABLE '
        || x.table_name
        || ' Cascade Constraints ';

END LOOP;
end;
    
    