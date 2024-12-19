SET IDENTITY_INSERT [SubscriptionPlans] ON;

INSERT INTO [SubscriptionPlans]
    ([PlanId], [Name], [Features])
VALUES
    (1, 'Basic Plan', '{"storage": "5GB", "support": "email"}'),
    (2, 'Pro Plan', '{"storage": "50GB", "support": "email, phone"}'),
    (3, 'Enterprise Plan', '{"storage": "unlimited", "support": "24/7 phone support"}');

SET IDENTITY_INSERT [SubscriptionPlans] OFF;
