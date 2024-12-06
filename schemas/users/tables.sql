-- Users and Authentication
CREATE TABLE [Users] (
    [UserId] UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    [Email] NVARCHAR(255) NOT NULL UNIQUE,
    [PasswordHash] NVARCHAR(512) NOT NULL,
    [Name] NVARCHAR(100),
    [TimeZone] NVARCHAR(50) DEFAULT 'UTC',
    [SubscriptionPlanId] INT,
    [IsActive] BIT DEFAULT 1,
    [CreatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    [UpdatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    FOREIGN KEY ([SubscriptionPlanId]) REFERENCES [SubscriptionPlans]([PlanId])
);
