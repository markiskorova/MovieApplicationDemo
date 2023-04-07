USE [MovieCatalogDemo]
GO

/****** Object:  Table [dbo].[Episode]    Script Date: 4/7/2023 10:57:27 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Episode](
	[Id] [int] IDENTITY(1001,1) NOT NULL,
	[Season] [int] NULL,
	[Number] [int] NULL,
	[SeasonEpisodeNumber] [int] NULL,
	[AirDate] [smalldatetime] NULL,
	[Title] [varchar](100) NULL,
	[Summary] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Episodes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Episode] ADD  CONSTRAINT [DF_Episodes_Title]  DEFAULT ('') FOR [Title]
GO

ALTER TABLE [dbo].[Episode] ADD  CONSTRAINT [DF_Episodes_Summary]  DEFAULT ('') FOR [Summary]
GO


