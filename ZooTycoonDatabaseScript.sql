USE [master]
GO
/****** Object:  Database [ZooTycoon]    Script Date: 15/01/2026 12:33:07 ******/
CREATE DATABASE [ZooTycoon]
GO

USE [ZooTycoon]
GO
/****** Object:  Table [dbo].[Animals]    Script Date: 15/01/2026 12:33:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Animals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Colour] [nvarchar](max) NOT NULL,
	[LimbCount] [int] NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[AnimalType] [nvarchar](8) NOT NULL,
	[Wingspan] [int] NULL,
	[WhiskerCount] [int] NULL,
	[TailLength] [float] NULL,
 CONSTRAINT [PK_Animals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Animals] ON 
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (4, N'Fido', N'BROWN', 4, N'DOG', N'Dog', NULL, NULL, 0.25)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (5, N'Fifi', N'ORANGE', 3, N'CAT', N'Cat', NULL, 6, NULL)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (7, N'Bob', N'BLACK', 5, N'APE', N'Animal', NULL, NULL, NULL)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (8, N'Tina', N'WHITE', 6, N'UNKNOWN', N'Animal', NULL, NULL, NULL)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (10, N'Thomo', N'PURPLE', 5, N'CAT', N'Cat', NULL, 8, NULL)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (11, N'Rover', N'WHITE', 4, N'DOG', N'Dog', NULL, NULL, 0.88)
GO
INSERT [dbo].[Animals] ([Id], [Name], [Colour], [LimbCount], [Type], [AnimalType], [Wingspan], [WhiskerCount], [TailLength]) VALUES (12, N'Whiffo', N'BROWN', 3, N'CAT', N'Cat', NULL, 8, NULL)
GO
SET IDENTITY_INSERT [dbo].[Animals] OFF
GO
USE [master]
GO
ALTER DATABASE [ZooTycoon] SET  READ_WRITE 
GO
