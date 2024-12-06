-- User Channel Settings
CREATE TABLE [UserChannelSettings] (
    [UserId] UNIQUEIDENTIFIER,
    [ChannelId] INT,
    [IsEnabled] BIT DEFAULT 1,
    [Settings] NVARCHAR(MAX), -- JSON configuration
    [CreatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    [UpdatedAt] DATETIME2 DEFAULT GETUTCDATE(),
    PRIMARY KEY ([UserId], [ChannelId]),
    FOREIGN KEY ([UserId]) REFERENCES [Users]([UserId]),
    FOREIGN KEY ([ChannelId]) REFERENCES [NotificationChannels]([ChannelId])
);
