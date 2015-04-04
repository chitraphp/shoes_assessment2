Description:This app lists shoe stores and their brands, using many to many relationship in SQL databases. A store can have many shoe brands and a brand can be stocked at many stores. The user can create, read, update and destroy stores. The user can create and read shoes.


setup instructions:

1.Pre-requisites: Must have PHP installed.
2.git clone https://github.com/chitraphp/shoes_assessment
3.cd ShoeStores/web
4.php -S localhost:8000

(then in a new window)

postgres

(then in a new tab)

psql

CREATE DATABASE shoes;

\c shoes;

CREATE TABLE brands (id serial PRIMARY KEY, brand_name varchar);

CREATE TABLE stores (id serial PRIMARY KEY, store_name varchar);

CREATE TABLE brands_stores (id serial PRIMARY KEY, brand_id int, store_id int);

CREATE DATABASE shoes_test WITH TEMPLATE shoes;

\c shoes_test;

You should now be able to open a browser and point it to localhost:8000 to see the shoe store site.


Contact information
chitra.atmakuru@gmail.com
