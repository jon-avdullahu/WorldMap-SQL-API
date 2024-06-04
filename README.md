# world-sql-api
# Interactive World Map (Using PostgreSQL)

The Interactive World Map is a NodeJS application that mainly uses PostgreSQL to retrieve and add information to the local database and then send the information to the hosted server (localhost for local)


## Installation

Use "npm install" to install the packages needed in order to run this code successfully.


```bash
npm install
npm install -g nodemon            <-- (if "nodemon" is not installed) 
```

You will also need PostgreSQL installed, which may be found here: https://www.postgresql.org/


After Installing pgAdmin (PostgreSQL application), import the .sql file in the pgAdmin Application.


```bash
const db = new pg.Client({
  user: "postgres",
  host: "localhost",
  database: "world",                 <--Make sure to Change these according to your log-in information
  password: "12345678",
  port: 5432,
});
db.connect();
```




## Usage

```bash
To use this application:



1.CD to the directory of the project and run "nodemon" in your terminal.

2.A localhost will be ran with the port 3000, and you open it through the browser.

If everything was installed as mentioned above, you should be able to see the World Map and add the countries you have been to, etc.
```

![image](https://github.com/jon-avdullahu/WorldMap-SQL-API/assets/81752726/fe394b09-f8a6-4086-9fd3-165fc6b40510)



## License

[MIT](https://choosealicense.com/licenses/mit/)
