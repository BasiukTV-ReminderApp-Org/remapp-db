#!/bin/bash
# Drop the database

echo "Starting database drop..."

# Check for required environment variables
if [ -z "$SA_PASSWORD" ] || [ -z "$DB_SERVER" ] || [ -z "$DB_NAME" ]; then
  echo "Error: Required environment variables (SA_PASSWORD, DB_SERVER, DB_NAME) are not set."
  exit 1
fi

# Terminate active connections to the database
echo "Terminating active connections to the database..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -Q "ALTER DATABASE [$DB_NAME] SET SINGLE_USER WITH ROLLBACK IMMEDIATE"

# Drop the database
echo "Dropping the database..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -Q "DROP DATABASE [$DB_NAME]"

echo "Database drop completed."
