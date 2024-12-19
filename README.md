# remapp-db
Database repo for the reminder app.

## Repository Directory Structure

The repository is organized as follows:

```
remapp-db/
├── schemas/               # SQL Files for the database schemas
│   ├── channels/          # SQL Files for the channels data
│   │   ├── tables.sql     # SQL File containing channels table definition
│   │   ├── indexes.sql    # SQL File containing channels indexes definition
│   ...                    # Folders for SQL definitions of other entities
├── scripts/
│   ├── init.sh            # Script to initialize the database
│   ├── seed.sh            # Script to seed the (local/test) database with initial data
│   ├── drop.sh            # Script to drop the (local/test) database
├── seeds/                 # SQL Files for the database seeding data
│   ├── common/            # Seeding data common for all environment
│   │   ├── channels/      # Seeding data for channels table
│   │   │   ├── insert.sql # Actual SQL statements
│   │   ...                # Seeding data for other tables
│   ...                    # Seeding data for other environments
├── README.md              # This README file
```

## Local Testing of the Database

To test the database created by `remapp-db/scripts/init.sh` running in a local SQL Server Express Docker container, follow these steps:

1. **Start a SQL Server Express container:**

    ```sh
    docker run -e "ACCEPT_EULA=Y" -e "MSSQL_SA_PASSWORD=MyPassword123" -p 1433:1433 --name sql1 --hostname sql1 -d mcr.microsoft.com/mssql/server:2022-latest
    ```

2. **Set environment variables:**

    ```sh
    export DB_SERVER=localhost
    export DB_NAME=remapp_db
    export SA_PASSWORD=MyPassword123
    export ENV=local
    ```

3. **Run the initialization script:**

    ```sh
    ./scripts/init.sh
    ./scripts/seed.sh
    ```

4. **Verify the database setup:**

    You can use `sqlcmd` or any SQL client to connect to the database and verify the tables and indexes have been created correctly.

    ```sh
    sqlcmd -S $DB_SERVER -U sa -P $SA_PASSWORD -d $DB_NAME -Q "SELECT name FROM sys.tables"
    ```

    This command should list all the tables created by the initialization script.

5. **Connect using Azure Data Studio:**

    - Open Azure Data Studio.
    - Click on "New Connection".
    - In the "Connection Details" panel, enter the following:
        - **Server name**: `localhost`
        - **Authentication type**: `SQL Login`
        - **User name**: `sa`
        - **Password**: `MyPassword123`
        - **Database name**: `remapp_db`
    - Click "Connect".

    You should now be connected to your local SQL Server instance and be able to browse the database objects created by the initialization script.
