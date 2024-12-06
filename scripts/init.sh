#!/bin/bash
# First-time database setup

# Create the database if it does not exist
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -Q "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'$DB_NAME') CREATE DATABASE [$DB_NAME]"

# Create tables in the correct order
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/subscriptions/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/users/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/channels/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/reminders/table.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/channel_preferences/table.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/channel_overrides/table.sql

# Create indexes
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/users/indexes.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/reminders/indexes.sql

# sqlcmd -S $DB_SERVER -d $DB_NAME -i seeds/common/*.sql
# sqlcmd -S $DB_SERVER -d $DB_NAME -i seeds/$ENV/*.sql