-- Subscription Plans
CREATE TABLE [SubscriptionPlans] (
    [PlanId] INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50) NOT NULL UNIQUE,
    [Features] NVARCHAR(MAX) -- JSON
);