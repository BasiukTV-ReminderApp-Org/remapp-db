INSERT INTO [UserChannelSettings]
    ([UserId], [ChannelId], [IsEnabled], [Settings], [CreatedAt], [UpdatedAt])
VALUES
    ('11111111-1111-1111-1111-111111111111', 1, 1, '{"frequency": "daily"}', GETUTCDATE(), GETUTCDATE()),
    ('11111111-1111-1111-1111-111111111111', 2, 0, '{"frequency": "weekly"}', GETUTCDATE(), GETUTCDATE()),
    ('22222222-2222-2222-2222-222222222222', 1, 1, '{"frequency": "immediate"}', GETUTCDATE(), GETUTCDATE()),
    ('22222222-2222-2222-2222-222222222222', 3, 1, '{"frequency": "daily"}', GETUTCDATE(), GETUTCDATE()),
    ('33333333-3333-3333-3333-333333333333', 2, 1, '{"frequency": "weekly"}', GETUTCDATE(), GETUTCDATE()),
    ('33333333-3333-3333-3333-333333333333', 3, 0, '{"frequency": "monthly"}', GETUTCDATE(), GETUTCDATE());
