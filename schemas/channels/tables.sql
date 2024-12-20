-- Notification Channels
CREATE TABLE [NotificationChannels] (
    [ChannelId] INT PRIMARY KEY IDENTITY(1,1),
    [Name] NVARCHAR(50) NOT NULL UNIQUE,
    [Description] NVARCHAR(255),
    [Settings] NVARCHAR (MAX) NULL,
    [IsActive] BIT DEFAULT 1
);
