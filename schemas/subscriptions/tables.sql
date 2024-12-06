-- Subscription Plans
CREATE TABLE [SubscriptionPlans] (
    [PlanId] INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50) NOT NULL UNIQUE,
    [MaxReminders] INT NOT NULL,
    [MaxChannels] INT NOT NULL,
    [Features] NVARCHAR(MAX)
);