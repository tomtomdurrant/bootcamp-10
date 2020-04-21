# Bootcamp 10

#### Feedback 

Set up connection beforehand. 







- Connecting to a database
- DML and DDL operations
- Join types on database tables
- Write/execute stored procedures
- Transact-SQL
- Techniques to avoid SQL Injections
- ORM's for data mapping
- Relational vs non-relational
- Transform data from database into language. 



## What is a database

Way of persisting data. 

Columns have data types.



### SQL 

SQL subsets:

- **Data Definition Language** - this is used to define how the database is structured. Creating and altering tables
- **Data Manipulation Language** - This is used to work with the data stored inside the database; creating, retrieving etc. 

Retrieving data:

`SELECT field1`

`FROM table`

**SELECT** says what data to get - **FROM** says which table

Data can also be filtered with a **WHERE** clause and can be ordered using **ORDER BY**

Strings need to be enclosed in single quotes 

It is good to try and sort and order by information in the front end before this gets into the database. Sorting millions of rows can be quite expensive. 

Select -> from -> where -> order by

If you don't know what the name of the column is there is 

#### Writing SQL Queries

Column names are technically case sensitive however an alias is created under the hood for the case conversion.

`AS` creates an alias for a table for future queries.

`LIMIT` is a way to limit the amount of responses. 

To query against multiple values you can use multiple `OR` 

or use `IN`('value1', 'value2') to search for value1 or value2

Filtering by multiple columns you can use the `AND` keyword 

Exclusive filtering is accomplished by `NOT IN` 

`HAVING` is a clause where you can filter by count > 1 for example.

## Updating data

`UPDATE` table

`SET` field1 = value, field2 = value

This would update every field1 value with value

You can filter with a WHERE clause. 

Good to start with a `SELECT` first. 

If you try to update a value to someone unacceptable (boolean to 2) it will throw an error. 



## Adding Data

Use the `INSERT INTO` table(field1, field2)

`VALUES` (value1, value2)

If a column has default values then you can leave that out in the insert. 

You can also add multiple records at a time. 

`INSERT INTO` table(field1, field2)

`VALUES` (value1, value2), (value11, value12)



## Removing Data

`DELETE FROM` table name < - this would delete every thing in table name

If you delete everything here it would still increment on the ID, keeps a little bit of the metadata etc (soft deletion).

Whereas `TRUNCATE` removes all the metadata too so that ID will start at 0 again. 

`DELETE` is row level whereas `UPDATE` is column level

You can also wrap a query inside an `IN` statement, such as `SELECT` etc. 



## Normalisation

Each table should be for one specific purpose. 

#### Creating tables

`CREATE TABLE` table_name (field1 data_type, field2 data_type)

This is called a heap table. There is no specific ordering or organisation of the data. 

**If you want to have an auto-incrementing identity column:**

`CREATE TABLE` table_name(id_name int NOT NULL AUTO_INCREMENT, ...other fields..., PRIMARY KEY(id_name))

This adds a primary key and stores the data in the table in a BTREE. 



Once you have normalised the data you will need to join your related tables. 

`SELECT` table1.field1, table2.field2

`FROM` table1

`INNER JOIN` table2 `ON` table1.field2 = table2.id_field



There are different types of joins, the most common is `INNER JOIN`. 

On an inner join you will only get the data that exists on both tables. 

A left join only gets everything from the 1st (left) table and the stuff that is in both tables. 



## Stored Procedures

Queries stored in a database. 

A way of streamlining the process and can be faster. If you have something that always will be run then they are good for that also. 

However they can be difficult to test against, as all the code is in the SQL. 

They are not pure functions as will not always return the same value. 



## Transactions

Transactions allow us to run many sql commands together and only make changes if all of the commands are successful.

`START TRANSACTION`
`INSERT INTO table1`
etc

Then:

`COMMIT`
**OR**
`ROLLBACK`

Usually SQL databases try and rollback if there has been an error in a single statement, however any extremely specific code should be wrapped in a transaction. 



## SQL INJECTION

Where you give users the opportunity to write user input you need to be careful to sanitise that input string. This leads you open to SQL injection, where a malicious user can run their own SQL on the server. 

This risk can easily be reduced by using parameterisation. This will depend on the database vendor that you have. 



#### User Secrets

Right click on project and use secrets which stores in the appdata directory. Inbuilt dotnet secrets are combined with appsettings. 