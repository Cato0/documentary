---
id: Database
title: Database
sidebar_label: Database
---

# Schema #

    A database schema is a way to logically group objects such as tables, views, stored procedures etc. Think of a schema as a container of objects.
    You can assign a user login permissions to a single schema so that the user can only access the objects they are authorized to access.
    Schemas can be created and altered in a database, and users can be granted access to a schema. A schema can be owned by any user, and schema ownership is transferable.

# Map #
- 
- 
- 

# SQL #

- MySQL
- MariaDB
- Oracle
- PostgreSQL
- Redis
- SQLite

# NoSQL #

- MongoDB


# ORM (Object Relational Mapping)

Maps data from a Database to easily usable python objects.
Its like a "virtual object database", that can be used from within the programming language

Examples:

- SQLAlchemy (Python)




# 'MariaDB #

- SQL Datenbank
- OpenSource
- high availability (integrated in many Languages and frameworks)

# MongoDB #

- noSQL  Datenbank
- OpenSource
- JSON Datei
- independent data (no relation to other data, but still pretty fast)
- dynamic query-ability (nearly as powerful as SQL)
- database schema is more scalable
- code more pleasant to write (no need for SQL)
    - you can just input your data (as JSON)
- Serverseitig in Javascript

# SQLite
- is an embedded database which has no network capabillities (unless you add them)


# When to use WHAT

- SQLite
    - for applications that require portability and don't require expansion
    - in cases where applications need to read or write files to disk directly
- MySQL/Postgre/ ...
    - where high-security features are required for data acceess
    - scalable tool that is easy to manage
- NOSQL (MongoDB)
    - very scalable
    - when you need to modify the features of the database (no relations, )
    - when speed for querys is essential ??? (not sure)

## SQL

    Advantages:

    ACID (Atomicity, Consistency, Isolation, Durability) compliance reduces anomalies and protects the integrity of your database by suggesting precisely how transactions interact with the database. Often NoSQL databases sacrifice ACID compliance with processing speed and flexibility.

    Your data remains unchanging and structured. If your company isn’t seeing a massive growth, which would require more servers and you’re only working with consistent data, then there’s probably no reason to use a system designed to support high traffic volume and a huge number of data types.

    These tools come with better support, product suites and add-ons to manage these databases, due to the amount of time they’ve been on the market.

    Disadvantages:

    The main problem with SQL is scaling it as your database grows. You see, even though scalability is usually tested in production environments, it’s often lower than NoSQL databases. Sharding is quite problematic as well.

## NoSQL

    Advantages:

    The real NoSQL motivator here is Big data, driving the popularity of NoSQL databases like CouchDB, MongoDB, Cassandra, and HBase. NoSQL databases ensure data doesn't become the bottleneck when all of the other components of your server-side application are designed to be seamless and fast.

    You can store huge amounts of data with little to no structure. Also, NoSQL database sets no limits on the types of data you can store together, allowing you to add more new types as your needs change. And you can store data in one place without defining the type of data in advance with document-based databases.

    Cloud-based storage is a good cost-saving solution, although you’ll have to spread the data across multiple servers to scale up. NoSQL databases are designed to be scaled across multiple data centers out of the box without much headache.

    You don't have to prep NoSQL data ahead of time. The non-relational nature of a NoSQL database lets you quickly create a database without having to develop a detailed database model, saving you a lot of development time.


    Disadvantages:

    The NoSQL community lacks the maturity of the MySQL user base since it is relatively new. While the community is rapidly growing, for now, SQL database management systems like MySQL is hard to compete with for its vast network of highly experienced end users.

    A major issue with NoSQL databases is the lack of reporting tools for performance testing and analysis. With SQL, on the other hand, you can find a wide range of reporting tools to help you prove your application’s validity.

    You’ll face compatibility issues with SQL instructions. In the query language, new databases use their own characteristics, and they’re not yet 100% compatible with the SQL used in relational databases.

    There’s a lack of standardization. There are a lot of NoSQL databases and still no standard, like the ones that exist in relational databases. This lack of standardization of NoSQL can cause a problem during migration.




