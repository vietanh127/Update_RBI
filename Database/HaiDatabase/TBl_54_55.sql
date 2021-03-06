USE [rbi]
GO
/****** Object:  Table [dbo].[TBL_54_DM_LINNING_INORGANIC]    Script Date: 8/28/2019 3:15:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_54_DM_LINNING_INORGANIC](
	[YearsSinceLastInspection] [int] NULL,
	[Strip lined alloy] [float] NULL,
	[Castable refractory] [float] NULL,
	[Castable refractory severe condition] [float] NULL,
	[Glass lined] [float] NULL,
	[Acid Brick] [float] NULL,
	[Fibreglass] [float] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TBL_55_DM_LINNING_ORGANIC]    Script Date: 8/28/2019 3:15:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_55_DM_LINNING_ORGANIC](
	[YearInService] [int] NULL,
	[LowQuality] [float] NULL,
	[MediumQuality] [float] NULL,
	[HighQuality] [float] NULL
) ON [PRIMARY]

GO
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (1, 0.3, 0.5, 9, 3, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (2, 0.5, 1, 40, 4, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (3, 0.7, 2, 146, 6, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (4, 1, 4, 428, 7, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (5, 1, 9, 1017, 9, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (6, 2, 16, 1978, 11, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (7, 3, 30, 3000, 13, 1, 2)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (8, 4, 53, 3000, 16, 1, 3)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (9, 6, 89, 3000, 20, 2, 7)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (10, 9, 146, 3000, 25, 3, 13)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (11, 12, 230, 3000, 30, 4, 26)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (12, 16, 351, 3000, 36, 5, 47)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (13, 22, 518, 3000, 44, 7, 82)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (14, 30, 738, 3000, 53, 9, 139)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (15, 40, 1017, 3000, 63, 11, 228)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (16, 53, 1358, 3000, 75, 15, 359)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (17, 69, 1758, 3000, 89, 19, 548)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (18, 89, 2209, 3000, 105, 25, 808)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (19, 115, 2697, 3000, 124, 31, 1151)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (20, 146, 3000, 3000, 146, 40, 1587)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (21, 184, 3000, 3000, 170, 50, 2119)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (22, 230, 3000, 3000, 199, 63, 2743)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (23, 286, 3000, 3000, 230, 78, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (24, 351, 3000, 3000, 266, 97, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (25, 428, 3000, 3000, 306, 119, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (1, 0.3, 0.5, 9, 3, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (2, 0.5, 1, 40, 4, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (3, 0.7, 2, 146, 6, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (4, 1, 4, 428, 7, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (5, 1, 9, 1017, 9, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (6, 2, 16, 1978, 11, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (7, 3, 30, 3000, 13, 1, 2)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (8, 4, 53, 3000, 16, 1, 3)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (9, 6, 89, 3000, 20, 2, 7)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (10, 9, 146, 3000, 25, 3, 13)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (11, 12, 230, 3000, 30, 4, 26)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (12, 16, 351, 3000, 36, 5, 47)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (13, 22, 518, 3000, 44, 7, 82)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (14, 30, 738, 3000, 53, 9, 139)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (15, 40, 1017, 3000, 63, 11, 228)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (16, 53, 1358, 3000, 75, 15, 359)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (17, 69, 1758, 3000, 89, 19, 548)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (18, 89, 2209, 3000, 105, 25, 808)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (19, 115, 2697, 3000, 124, 31, 1151)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (20, 146, 3000, 3000, 146, 40, 1587)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (21, 184, 3000, 3000, 170, 50, 2119)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (22, 230, 3000, 3000, 199, 63, 2743)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (23, 286, 3000, 3000, 230, 78, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (24, 351, 3000, 3000, 266, 97, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (25, 428, 3000, 3000, 306, 119, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (1, 0.3, 0.5, 9, 3, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (2, 0.5, 1, 40, 4, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (3, 0.7, 2, 146, 6, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (4, 1, 4, 428, 7, 0, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (5, 1, 9, 1017, 9, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (6, 2, 16, 1978, 11, 1, 1)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (7, 3, 30, 3000, 13, 1, 2)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (8, 4, 53, 3000, 16, 1, 3)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (9, 6, 89, 3000, 20, 2, 7)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (10, 9, 146, 3000, 25, 3, 13)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (11, 12, 230, 3000, 30, 4, 26)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (12, 16, 351, 3000, 36, 5, 47)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (13, 22, 518, 3000, 44, 7, 82)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (14, 30, 738, 3000, 53, 9, 139)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (15, 40, 1017, 3000, 63, 11, 228)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (16, 53, 1358, 3000, 75, 15, 359)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (17, 69, 1758, 3000, 89, 19, 548)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (18, 89, 2209, 3000, 105, 25, 808)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (19, 115, 2697, 3000, 124, 31, 1151)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (20, 146, 3000, 3000, 146, 40, 1587)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (21, 184, 3000, 3000, 170, 50, 2119)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (22, 230, 3000, 3000, 199, 63, 2743)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (23, 286, 3000, 3000, 230, 78, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (24, 351, 3000, 3000, 266, 97, 3000)
INSERT [dbo].[TBL_54_DM_LINNING_INORGANIC] ([YearsSinceLastInspection], [Strip lined alloy], [Castable refractory], [Castable refractory severe condition], [Glass lined], [Acid Brick], [Fibreglass]) VALUES (25, 428, 3000, 3000, 306, 119, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (1, 30, 1, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (2, 89, 4, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (3, 230, 16, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (4, 518, 53, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (5, 1017, 146, 0.2)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (6, 1758, 351, 1)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (7, 2697, 738, 4)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (8, 3000, 1358, 16)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (9, 3000, 2209, 53)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (10, 3000, 3000, 146)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (11, 3000, 3000, 351)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (12, 3000, 3000, 738)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (13, 3000, 3000, 1358)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (14, 3000, 3000, 2209)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (15, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (16, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (17, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (18, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (19, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (20, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (21, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (22, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (23, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (24, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (25, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (1, 30, 1, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (2, 89, 4, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (3, 230, 16, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (4, 518, 53, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (5, 1017, 146, 0.2)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (6, 1758, 351, 1)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (7, 2697, 738, 4)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (8, 3000, 1358, 16)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (9, 3000, 2209, 53)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (10, 3000, 3000, 146)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (11, 3000, 3000, 351)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (12, 3000, 3000, 738)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (13, 3000, 3000, 1358)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (14, 3000, 3000, 2209)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (15, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (16, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (17, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (18, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (19, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (20, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (21, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (22, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (23, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (24, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (25, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (1, 30, 1, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (2, 89, 4, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (3, 230, 16, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (4, 518, 53, 0)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (5, 1017, 146, 0.2)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (6, 1758, 351, 1)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (7, 2697, 738, 4)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (8, 3000, 1358, 16)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (9, 3000, 2209, 53)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (10, 3000, 3000, 146)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (11, 3000, 3000, 351)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (12, 3000, 3000, 738)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (13, 3000, 3000, 1358)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (14, 3000, 3000, 2209)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (15, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (16, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (17, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (18, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (19, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (20, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (21, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (22, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (23, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (24, 3000, 3000, 3000)
INSERT [dbo].[TBL_55_DM_LINNING_ORGANIC] ([YearInService], [LowQuality], [MediumQuality], [HighQuality]) VALUES (25, 3000, 3000, 3000)
