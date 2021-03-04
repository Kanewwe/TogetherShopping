SELECT [Id],[OrderId],[UserId],[UserName],[Item],[Price],[CreateDate]
  FROM [Together].[dbo].[OrderDetail] WHERE IsEnable = 1 AND OrderId = @OrderId;