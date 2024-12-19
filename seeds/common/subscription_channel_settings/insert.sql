INSERT INTO [SubscriptionChannelSettings]
    ([SubscriptionPlanId], [NotificationChannelId], [Preferences], [UsageLimit])
VALUES
    (1, 1, '{"frequency": "daily"}', 1000), -- Basic Plan, Email
    (2, 1, '{"frequency": "weekly"}', 5000), -- Basic Plan, SMS
    (2, 3, '{"frequency": "instant"}', 10000), -- Pro Plan, Push
    (3, 1, '{"frequency": "instant"}', 20000), -- Enterprise Plan, Email
    (3, 2, '{"frequency": "instant"}', 20000), -- Enterprise Plan, SMS
    (3, 3, '{"frequency": "instant"}', 20000); -- Enterprise Plan, Push
