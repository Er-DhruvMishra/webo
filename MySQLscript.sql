USE [serverauto]
GO
/****** Object:  Table [dbo].[signupinfo]    Script Date: 04/04/2016 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[signupinfo](
	[title] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[gender] [varchar](30) NULL,
	[dob] [varchar](50) NULL,
	[bloodgroup] [varchar](30) NULL,
	[address] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[pincode] [numeric](6, 0) NULL,
	[contactno] [varchar](50) NULL,
	[mobno] [numeric](10, 0) NULL,
	[email] [varchar](50) NULL,
	[modulename] [varchar](50) NULL,
	[securityques] [varchar](max) NULL,
	[ans] [varchar](max) NULL,
	[entrydate] [datetime] NULL,
	[password] [varchar](50) NULL,
	[empid] [numeric](18, 0) IDENTITY(11000,1) NOT NULL,
	[activestatus] [bit] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logininfo]    Script Date: 04/04/2016 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logininfo](
	[empid] [numeric](18, 0) NULL,
	[password] [varchar](50) NULL,
	[logindate] [datetime] NULL,
	[logintime] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[logdetails]    Script Date: 04/04/2016 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[logdetails](
	[module_name] [varchar](50) NULL,
	[page_name] [varchar](50) NULL,
	[event_name] [varchar](max) NULL,
	[error_message] [varchar](max) NULL,
	[entry_date] [datetime] NULL,
	[current_status] [varchar](50) NULL,
	[id] [numeric](18, 0) NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[forwarderrorinfo]    Script Date: 04/04/2016 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[forwarderrorinfo](
	[errorid] [varchar](50) NULL,
	[modulename] [varchar](50) NULL,
	[fromempid] [numeric](18, 0) NULL,
	[toempid] [numeric](18, 0) NULL,
	[description] [varchar](max) NULL,
	[entrydate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[closederrorlog]    Script Date: 04/04/2016 15:20:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[closederrorlog](
	[empid] [numeric](18, 0) NULL,
	[empname] [varchar](50) NULL,
	[errorid] [varchar](50) NULL,
	[modulename] [varchar](50) NULL,
	[pagename] [varchar](50) NULL,
	[eventname] [varchar](50) NULL,
	[errormessage] [varchar](50) NULL,
	[entrydate] [datetime] NULL,
	[currentstatus] [varchar](50) NULL,
	[resolvingdate] [datetime] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF_signupinfo_activestatus]    Script Date: 04/04/2016 15:20:57 ******/
ALTER TABLE [dbo].[signupinfo] ADD  CONSTRAINT [DF_signupinfo_activestatus]  DEFAULT ((1)) FOR [activestatus]
GO
