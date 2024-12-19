-- Reminders
CREATE TABLE [Reminders] (
    [ReminderId] UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [Title] NVARCHAR(255) NOT NULL,
    [Body] NVARCHAR(MAX),
    [DueAt] DATETIME2 NOT NULL,
    [OriginalDueAt] DATETIME2 NOT NULL,
    [RecurrencePattern] NVARCHAR(50), -- daily/weekly/monthly/annually
    [RecurrenceConfig] NVARCHAR(MAX), -- JSON with specific recurrence settings
    [Status] NVARCHAR(20) DEFAULT 'ACTIVE',
    [CreatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    [UpdatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId])
);
