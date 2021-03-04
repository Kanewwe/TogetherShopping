USE [Ding]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 2017/12/23 上午 09:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](40) NOT NULL,
	[Item] [nvarchar](50) NOT NULL,
	[Price] [smallint] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2017/12/23 上午 09:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [uniqueidentifier] NOT NULL,
	[OrderNo] [varchar](10) NOT NULL,
	[OrderMemo] [nvarchar](100) NULL,
	[PId] [uniqueidentifier] NOT NULL,
	[PName] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
	[IsClose] [bit] NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCatalog]    Script Date: 2017/12/23 上午 09:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCatalog](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
 CONSTRAINT [PK_ProductCatalog] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Products]    Script Date: 2017/12/23 上午 09:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CatalogId] [varchar](50) NOT NULL,
	[CatalogName] [nvarchar](10) NOT NULL,
	[Img] [varchar](40) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/12/23 上午 09:36:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Account] [varchar](60) NOT NULL,
	[Pwd] [varchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsEnable] [tinyint] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[OrderDetail] ([Id], [OrderId], [UserId], [UserName], [Item], [Price], [CreateDate], [IsEnable]) VALUES (N'64cce375-1d51-49dc-8f36-1aa1255afb10', N'a500da81-9488-4a09-a50e-1588f7aeb52e', N'2ed94118-21c2-4bcb-8040-f75c468404c7', N'Test', N'烏龍綠微糖去冰', 25, CAST(0x0000A8510161F49F AS DateTime), 1)
INSERT [dbo].[Orders] ([Id], [OrderNo], [OrderMemo], [PId], [PName], [CreateDate], [IsEnable], [IsClose]) VALUES (N'a500da81-9488-4a09-a50e-1588f7aeb52e', N'171202', N'12/11 午餐飲料', N'0033b435-6f04-40af-a816-faf793eda2f7', N'清心福全', CAST(0x0000A85100B3E7B4 AS DateTime), 1, 0)
INSERT [dbo].[Orders] ([Id], [OrderNo], [OrderMemo], [PId], [PName], [CreateDate], [IsEnable], [IsClose]) VALUES (N'ea27b449-c7c3-4eb8-963a-7c203bf283ed', N'171201', N'12/11 午餐', N'a555af4f-c80d-441a-808c-c8b2fa1d73ff', N'正忠排骨飯', CAST(0x0000A85100B3B1B9 AS DateTime), 1, 0)
INSERT [dbo].[ProductCatalog] ([Id], [Name], [CreateDate], [IsEnable]) VALUES (N'6234f41c-083d-4e5e-a83b-002bb124459a', N'點心', CAST(0x0000A85001035BDF AS DateTime), 1)
INSERT [dbo].[ProductCatalog] ([Id], [Name], [CreateDate], [IsEnable]) VALUES (N'c8622d31-a09b-44ad-a7b2-57644a844df7', N'吃飯', CAST(0x0000A85000DA67E3 AS DateTime), 1)
INSERT [dbo].[ProductCatalog] ([Id], [Name], [CreateDate], [IsEnable]) VALUES (N'de62909c-eaac-4cc9-a57d-6c4aa9297eb2', N'喝飲料', CAST(0x0000A85000DA6E8F AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'c0e52fba-5e29-4321-a88d-370d572bbd3e', N'裸一貫日式便當', N'C8622D31-A09B-44AD-A7B2-57644A844DF7', N'吃飯', N'1.jpg', CAST(0x0000A84F012A40DA AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'74e7f8da-79cc-4ec6-8adc-4de4e32861b7', N'50嵐', N'DE62909C-EAAC-4CC9-A57D-6C4AA9297EB2', N'喝飲料', N'2.jpg', CAST(0x0000A84F012464F4 AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'b3b5a0bf-def4-4168-b932-b53450a0eb29', N'八方雲集', N'C8622D31-A09B-44AD-A7B2-57644A844DF7', N'吃飯', N'3.jpg', CAST(0x0000A84F010FD87C AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'6c73fb49-d788-4fdd-a75d-ba49427b7411', N'大苑子茶飲', N'DE62909C-EAAC-4CC9-A57D-6C4AA9297EB2', N'喝飲料', N'4.jpg', CAST(0x0000A84F012D09DD AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'a555af4f-c80d-441a-808c-c8b2fa1d73ff', N'正忠排骨飯', N'C8622D31-A09B-44AD-A7B2-57644A844DF7', N'吃飯', N'5.jpg', CAST(0x0000A84F012BB66B AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'7032dea2-8f64-48a2-a686-ebe307f2c5ab', N'富鼎旺便當', N'C8622D31-A09B-44AD-A7B2-57644A844DF7', N'吃飯', N'6.JPG', CAST(0x0000A84F012BE55D AS DateTime), 1)
INSERT [dbo].[Products] ([Id], [Name], [CatalogId], [CatalogName], [Img], [CreateDate], [IsEnable]) VALUES (N'0033b435-6f04-40af-a816-faf793eda2f7', N'清心福全', N'DE62909C-EAAC-4CC9-A57D-6C4AA9297EB2', N'喝飲料', N'7.jpg', CAST(0x0000A8500111C791 AS DateTime), 1)
INSERT [dbo].[Users] ([Id], [Name], [Account], [Pwd], [CreateDate], [IsEnable]) VALUES (N'db71f3aa-e567-49ae-840b-683a0af319c2', N'Jerry', N'jerry', N'QsyeVy6smGjgPIFeQEN2REe/F5imGSIVBg/beyLQxTg=
', CAST(0x0000A84F01699CAE AS DateTime), 1)
INSERT [dbo].[Users] ([Id], [Name], [Account], [Pwd], [CreateDate], [IsEnable]) VALUES (N'2ed94118-21c2-4bcb-8040-f75c468404c7', N'Test', N'test', N'o5mDbEMDuddJT0FEx7Y1tI3GXFJp/wc1RlKHIizZaA8=', CAST(0x0000A84E0108F783 AS DateTime), 1)
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_Price]  DEFAULT ((0)) FOR [Price]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  CONSTRAINT [DF_OrderDetail_IsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_IsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_IsClose]  DEFAULT ((0)) FOR [IsClose]
GO
ALTER TABLE [dbo].[ProductCatalog] ADD  CONSTRAINT [DF_ProductCatalog_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[ProductCatalog] ADD  CONSTRAINT [DF_ProductCatalog_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[ProductCatalog] ADD  CONSTRAINT [DF_ProductCatalog_IsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Product_IsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Id]  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_IsEnable]  DEFAULT ((1)) FOR [IsEnable]
GO