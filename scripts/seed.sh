#!/bin/bash
# Seeding the database with test data

echo "Starting database seeding..."

# Check for required environment variables
if [ -z "$SA_PASSWORD" ] || [ -z "$DB_SERVER" ] || [ -z "$DB_NAME" ] || [ -z "$ENV" ]; then
  echo "Error: Required environment variables (SA_PASSWORD, DB_SERVER, DB_NAME, ENV) are not set."
  exit 1
fi

# Seed Data Common for all environments
echo "Seeding common data..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/common/channels/insert.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/common/subscriptions/insert.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/common/subscription_channel_settings/insert.sql

# Environment Specific Seed Data
echo "Seeding environment-specific data..."
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/$ENV/users/insert.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/$ENV/channel_preferences/insert.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/$ENV/reminders/insert.sql
sqlcmd -U sa -P $SA_PASSWORD -S $DB_SERVER -d $DB_NAME -i seeds/$ENV/reminder_channel_overrides/insert.sql

echo "Database seeding completed."