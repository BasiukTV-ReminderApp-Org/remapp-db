#!/bin/bash
# First-time database setup

echo "Starting database setup..."

# Check for required environment variables
if [ -z "$SA_PASSWORD" ] || [ -z "$DB_SERVER" ] || [ -z "$DB_NAME" ]; then
  echo "Error: Required environment variables (SA_PASSWORD, DB_SERVER, DB_NAME) are not set."
  exit 1
fi

# Create the database if it does not exist
echo "Checking if database exists and creating if not..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -Q "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'$DB_NAME') CREATE DATABASE [$DB_NAME]"

# Create tables in the correct order
echo "Creating tables..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/subscriptions/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/users/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/channels/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/subscription_channel_settings/tables.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/reminders/table.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/channel_preferences/table.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/reminder_channel_overrides/table.sql

# Create indexes
echo "Creating indexes..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/users/indexes.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i schemas/reminders/indexes.sql

echo "Database setup completed."
