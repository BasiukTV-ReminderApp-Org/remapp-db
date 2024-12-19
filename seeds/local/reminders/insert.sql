INSERT INTO [Reminders]
    ([ReminderId], [UserId], [Title], [Body], [DueAt], [OriginalDueAt], [RecurrencePattern], [RecurrenceConfig], [Status], [CreatedAt], [UpdatedAt])
SELECT
    'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa' AS [ReminderId],
    '11111111-1111-1111-1111-111111111111' AS [UserId],
    'Reminder 1' AS [Title],
    'Body of reminder 1' AS [Body],
    DATEADD(day, 1, GETUTCDATE()) AS [DueAt],
    GETUTCDATE() AS [OriginalDueAt],
    'daily' AS [RecurrencePattern],
    '{"interval": 1}' AS [RecurrenceConfig],
    'ACTIVE' AS [Status],
    GETUTCDATE() AS [CreatedAt],
    GETUTCDATE() AS [UpdatedAt]
UNION ALL
SELECT
    'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb' AS [ReminderId],
    '22222222-2222-2222-2222-222222222222' AS [UserId],
    'Reminder 2' AS [Title],
    'Body of reminder 2' AS [Body],
    DATEADD(day, 2, GETUTCDATE()) AS [DueAt],
    GETUTCDATE() AS [OriginalDueAt],
    'weekly' AS [RecurrencePattern],
    '{"interval": 1, "daysOfWeek": ["Monday"]}' AS [RecurrenceConfig],
    'ACTIVE' AS [Status],
    GETUTCDATE() AS [CreatedAt],
    GETUTCDATE() AS [UpdatedAt]
UNION ALL
SELECT
    'cccccccc-cccc-cccc-cccc-cccccccccccc' AS [ReminderId],
    '33333333-3333-3333-3333-333333333333' AS [UserId],
    'Reminder 3' AS [Title],
    'Body of reminder 3' AS [Body],
    DATEADD(day, 3, GETUTCDATE()) AS [DueAt],
    GETUTCDATE() AS [OriginalDueAt],
    'monthly' AS [RecurrencePattern],
    '{"interval": 1, "dayOfMonth": 15}' AS [RecurrenceConfig],
    'ACTIVE' AS [Status],
    GETUTCDATE() AS [CreatedAt],
    GETUTCDATE() AS [UpdatedAt];
