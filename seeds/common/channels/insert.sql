SET IDENTITY_INSERT [NotificationChannels] ON;

INSERT INTO [NotificationChannels]
    ([ChannelId], [Name], [Description], [Settings], [IsActive])
VALUES
    (1, 'Email', 'Email notifications', '{"smtpServer": "smtp.example.com", "port": 587}', 1),
    (2, 'SMS', 'SMS notifications', '{"provider": "twilio", "apiKey": "your_api_key"}', 1),
    (3, 'Push', 'Push notifications', '{"service": "firebase", "apiKey": "your_api_key"}', 1);

SET IDENTITY_INSERT [NotificationChannels] OFF;
