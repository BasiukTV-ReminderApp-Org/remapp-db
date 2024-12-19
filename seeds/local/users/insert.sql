INSERT INTO [Users]
    ([UserId], [Email], [PasswordHash], [Name], [TimeZone], [SubscriptionPlanId], [IsActive], [CreatedAt], [UpdatedAt])
VALUES
    ('11111111-1111-1111-1111-111111111111', 'user1@example.com', 'hashedpassword1', 'Basic User', 'UTC', 1, 1, GETUTCDATE(), GETUTCDATE()),
    ('22222222-2222-2222-2222-222222222222', 'user2@example.com', 'hashedpassword2', 'Pro User', 'UTC', 2, 1, GETUTCDATE(), GETUTCDATE()),
    ('33333333-3333-3333-3333-333333333333', 'user3@example.com', 'hashedpassword3', 'Enterprise User', 'UTC', 3, 1, GETUTCDATE(), GETUTCDATE());

