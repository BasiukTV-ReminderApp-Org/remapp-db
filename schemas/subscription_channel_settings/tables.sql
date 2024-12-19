CREATE TABLE [SubscriptionChannelSettings] (
    [SubscriptionPlanId] INT NOT NULL,
    [NotificationChannelId] INT NOT NULL,
    [UsageLimit] INT,
    [Preferences] NVARCHAR(MAX), -- JSON
    PRIMARY KEY ([SubscriptionPlanId], [NotificationChannelId]),
    FOREIGN KEY ([SubscriptionPlanId]) REFERENCES [SubscriptionPlans]([PlanId]),
    FOREIGN KEY ([NotificationChannelId]) REFERENCES [NotificationChannels]([ChannelId])
);
