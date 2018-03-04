--Faizan 
--Run following query it will generate database

Go
--CREATE DATABASE PM_Database;


--Then run following script seperately

-- ============================================================================
-- Author:		Salman Mustansar
-- Create date: 28/02/2018
-- Description:	Create tables script for USer, role, permission and patients
-- ============================================================================
GO
PRINT N'Begin Create Table Script';
Go
USE [PM_Database]
GO
IF OBJECT_ID('[dbo].[Users]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Users]; 
CREATE TABLE [dbo].[Users](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserType] [int] NULL,
	[Username] [varchar](100) NULL,
	[Pass] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[SurName] [varchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[CountryId] [bigint] NULL,
	[City] [varchar](max) NULL,
	[State_] [varchar](50) NULL,
	[Suburb] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[Status_] [bit] NULL,
	[ForgotPassCode] [varchar](50) NULL,
	[Address_] [varchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[UpdatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]


GO
IF OBJECT_ID('[dbo].[Roles]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Roles];
GO
CREATE TABLE [dbo].[Roles](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[RoleType] [nvarchar](256) NULL,
	[CreatedDt] [datetime] NULL,
	[UpdateDt] [datetime] NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
IF OBJECT_ID('[dbo].[Permissions]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Permissions];
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[PermissionType] [varchar](50) NULL,
	[SortOrder] [int] NULL,
	[UpdateDt] [datetime] NULL,
	[CreatedDt] [datetime] NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
GO
IF OBJECT_ID('[dbo].[UsersInRoles]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[UsersInRoles];
GO
CREATE TABLE [dbo].[UsersInRoles](
	[UserId] [bigint] NOT NULL,
	[RoleId] [bigint] NOT NULL,
 CONSTRAINT [PK_UsersInRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
IF OBJECT_ID('[dbo].[PermissionsInRoles]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[PermissionsInRoles];
GO
CREATE TABLE [dbo].[PermissionsInRoles](
	[RoleId] [bigint] NOT NULL,
	[PermissionId] [bigint] NOT NULL,
 CONSTRAINT [PK_PermissionsInRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[PermissionId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
IF OBJECT_ID('[dbo].[Patients]', 'U') IS NOT NULL 
  DROP TABLE [dbo].[Patients];
GO
CREATE TABLE [dbo].[Patients](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[SurName] [varchar](50) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[MobileNo] [nvarchar](50) NULL,
	[Email] [nvarchar](100) NULL,
	[CountryId] [bigint] NULL,
	[City] [varchar](max) NULL,
	[State_] [varchar](50) NULL,
	[Suburb] [varchar](50) NULL,
	[PostCode] [varchar](50) NULL,
	[Status_] [bit] NULL,
	[Address_] [varchar](500) NULL,
	[CreatedDate] [date] NOT NULL,
	[UpdatedDate] [date] NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
PRINT N'End Create Table Script';
GO

