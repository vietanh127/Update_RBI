USE [rbi]
GO
/****** Object:  Table [dbo].[TBL_45_DM_THIN]    Script Date: 8/25/2019 10:46:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_45_DM_THIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOrder] [int] NULL,
	[LevelConfidence] [nvarchar](50) NULL,
	[PriorProbability] [float] NULL,
 CONSTRAINT [PK_TBL45_DMThinning] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_46_DM_THIN]    Script Date: 8/25/2019 10:46:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_46_DM_THIN](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NumberOrder] [int] NULL,
	[EffectivenessCode] [nvarchar](50) NULL,
	[ConditionalProbability] [float] NULL,
 CONSTRAINT [PK_TBL46DM_THIN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_47_DM_THIN_TANK]    Script Date: 8/25/2019 10:46:38 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_47_DM_THIN_TANK](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Art] [float] NULL,
	[E] [float] NULL,
	[Insp] [int] NULL,
	[D] [float] NULL,
	[C] [float] NULL,
	[B] [float] NULL,
	[A] [float] NULL,
 CONSTRAINT [PK_TBL_47_DM_THIN_TANK] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[TBL_45_DM_THIN] ON 

INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (1, 1, N'Low', 0.5)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (2, 1, N'Medium', 0.7)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (3, 1, N'High', 0.8)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (4, 2, N'Low', 0.3)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (5, 2, N'Medium', 0.2)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (6, 2, N'High', 0.15)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (7, 3, N'Low', 0.2)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (8, 3, N'Medium', 0.1)
INSERT [dbo].[TBL_45_DM_THIN] ([ID], [NumberOrder], [LevelConfidence], [PriorProbability]) VALUES (9, 3, N'High', 0.05)
SET IDENTITY_INSERT [dbo].[TBL_45_DM_THIN] OFF
SET IDENTITY_INSERT [dbo].[TBL_46_DM_THIN] ON 

INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (1, 1, N'E', 0.33)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (2, 1, N'D', 0.4)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (3, 1, N'C', 0.5)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (4, 1, N'B', 0.7)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (5, 1, N'A', 0.9)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (6, 2, N'E', 0.33)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (7, 2, N'D', 0.33)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (8, 2, N'C', 0.3)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (9, 2, N'B', 0.2)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (10, 2, N'A', 0.09)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (11, 3, N'E', 0.33)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (12, 3, N'D', 0.27)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (13, 3, N'C', 0.2)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (14, 3, N'B', 0.1)
INSERT [dbo].[TBL_46_DM_THIN] ([ID], [NumberOrder], [EffectivenessCode], [ConditionalProbability]) VALUES (15, 3, N'A', 0.01)
SET IDENTITY_INSERT [dbo].[TBL_46_DM_THIN] OFF
SET IDENTITY_INSERT [dbo].[TBL_47_DM_THIN_TANK] ON 

INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (1, 0, 0.1, 1, 0.1, 0.1, 0.1, 0.1)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (2, 0.05, 4, 1, 1, 0.5, 0.4, 0.4)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (3, 0.1, 14, 1, 3, 1, 0.7, 0.7)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (4, 0.15, 32, 1, 8, 2, 1, 1)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (5, 0.2, 56, 1, 18, 6, 2, 1)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (6, 0.25, 87, 1, 32, 11, 4, 3)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (7, 0.3, 125, 1, 53, 21, 9, 6)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (8, 0.35, 170, 1, 80, 36, 16, 12)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (9, 0.4, 222, 1, 115, 57, 29, 21)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (10, 0.45, 281, 1, 158, 86, 47, 36)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (11, 0.5, 347, 1, 211, 124, 73, 58)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (12, 0.55, 420, 1, 273, 173, 109, 89)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (13, 0.6, 500, 1, 346, 234, 158, 133)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (14, 0.65, 587, 1, 430, 309, 222, 192)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (15, 0.7, 681, 1, 527, 401, 305, 270)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (16, 0.75, 782, 1, 635, 510, 409, 370)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (17, 0.8, 890, 1, 757, 638, 538, 498)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (18, 0.85, 1005, 1, 893, 789, 696, 658)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (19, 0.9, 1126, 1, 1044, 963, 888, 856)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (20, 0.95, 1256, 1, 1209, 1163, 1118, 1098)
INSERT [dbo].[TBL_47_DM_THIN_TANK] ([ID], [Art], [E], [Insp], [D], [C], [B], [A]) VALUES (21, 1, 1390, 1, 1390, 1390, 1390, 1390)
SET IDENTITY_INSERT [dbo].[TBL_47_DM_THIN_TANK] OFF
