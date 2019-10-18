---
id: SQL
title: SQL
sidebar_label: SQL
---

# SELECT #

    SELECT * FROM table;

    SELECT age, name FROM people;

# Select additional piece of data

    SELECT age, '1234' FROM people;

# Alias

    SELECT age AS person_age FROM people;


######################################################################################

# WHERE #

    SELECT age, name FROM people WHERE age > 18 AND name = 'Joe';
- AND OR


######################################################################################

# ORDER BY #

    SELECT name, age FROM people ORDER BY age DESC;
- ASC for ascending (aufsteigend) or DESC for descending (absteigend)


######################################################################################

# JOIN #

    Example 1:

        SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
        FROM Orders
        INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

    Example 2:

        SELECT age, name, height FROM people LEFT JOIN heights USING (name);

######################################################################################

# UNION

    SELECT age, name FROM customers
    UNION   # UNION ALL
    SELECT age, name FROM staff;

######################################################################################

# INSERT

    INSERT INTO people(name, age) VALUES('joe' , 102);

######################################################################################

# UPDATE

    UPDATE people SET name = 'Joe', age = 101 WHERE (name = 'James' AND age = 100);

######################################################################################

# UPSERT

Update a record if it already exists

    INSERT INTO people(name, age)
    VALUES('Joe', 101)
    ON DUPLICATE KEY UPDATE age = 101;

update if insert failed

######################################################################################

# DELETE

    DELETE FROM people;

    DELETE FROM people WHERE name = 'Joe';

######################################################################################

# CREATE TABLE

    CREATE TABLE people (
        name TEXT,
        age INTEGER,
        PRIMARY KEY(name)
    )

######################################################################################

# ALTER TABLE #

    ALTER TABLE people ADD height integer;

######################################################################################

# DROP TABLE #

    DROP TABLE people;

######################################################################################










