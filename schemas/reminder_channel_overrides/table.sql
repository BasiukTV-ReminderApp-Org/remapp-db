-- Reminder Channel Override
CREATE TABLE [ReminderChannelsOverrides] (
    [ReminderId] UNIQUEIDENTIFIER,
    [ChannelId] INT,
    [OverrideConfig] NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY ([ReminderId], [ChannelId]),
    FOREIGN KEY ([ReminderId]) REFERENCES [Reminders]([ReminderId]),
    FOREIGN KEY ([ChannelId]) REFERENCES [NotificationChannels]([ChannelId])
);