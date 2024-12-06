-- Reminder Channel Override
CREATE TABLE [ReminderChannelsOverrides] (
    [ReminderId] UNIQUEIDENTIFIER,
    [ChannelId] INT,
    PRIMARY KEY ([ReminderId], [ChannelId]),
    FOREIGN KEY ([ReminderId]) REFERENCES [Reminders]([ReminderId]),
    FOREIGN KEY ([ChannelId]) REFERENCES [NotificationChannels]([ChannelId])
);