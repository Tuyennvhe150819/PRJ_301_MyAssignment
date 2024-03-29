USE [master]
GO
/****** Object:  Database [Assignment]    Script Date: 7/10/2022 11:40:55 PM ******/
CREATE DATABASE [Assignment]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assignment', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assignment_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Assignment_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Assignment] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assignment].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assignment] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assignment] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assignment] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Assignment] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assignment] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assignment] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assignment] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assignment] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assignment] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assignment] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assignment] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Assignment] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assignment] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assignment] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assignment] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assignment] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assignment] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assignment] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assignment] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Assignment] SET  MULTI_USER 
GO
ALTER DATABASE [Assignment] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assignment] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assignment] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assignment] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assignment] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assignment] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assignment', N'ON'
GO
ALTER DATABASE [Assignment] SET QUERY_STORE = OFF
GO
USE [Assignment]
GO
/****** Object:  Table [dbo].[Campus]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Campus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Campus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[csid] [int] NULL,
	[iid] [int] NULL,
 CONSTRAINT [PK_Group] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[displayName] [nvarchar](100) NOT NULL,
	[cid] [int] NOT NULL,
	[code] [nvarchar](50) NULL,
	[imageUrl] [varchar](100) NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lession]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lession](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[gid] [int] NOT NULL,
	[iid] [int] NOT NULL,
	[tid] [int] NOT NULL,
	[rid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[status] [bit] NULL,
 CONSTRAINT [PK_Lession] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[displayName] [nvarchar](100) NOT NULL,
	[cid] [int] NOT NULL,
	[code] [varchar](50) NULL,
	[imageUrl] [varchar](100) NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Group]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Group](
	[suid] [int] NOT NULL,
	[gid] [int] NOT NULL,
 CONSTRAINT [PK_Student_Group] PRIMARY KEY CLUSTERED 
(
	[suid] ASC,
	[gid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Lession]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Lession](
	[suid] [int] NOT NULL,
	[lid] [int] NOT NULL,
	[status] [varchar](50) NOT NULL,
	[recordtime] [datetime] NULL,
	[comment] [nvarchar](4000) NULL,
 CONSTRAINT [PK_Student_Lession] PRIMARY KEY CLUSTERED 
(
	[suid] ASC,
	[lid] ASC,
	[status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 7/10/2022 11:40:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[start] [varchar](50) NOT NULL,
	[end] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Campus] ON 

INSERT [dbo].[Campus] ([id], [name]) VALUES (1, N'FU Hòa Lạc')
INSERT [dbo].[Campus] ([id], [name]) VALUES (2, N'FU Đà Nẵng')
INSERT [dbo].[Campus] ([id], [name]) VALUES (3, N'FU Hồ Chí Minh')
INSERT [dbo].[Campus] ([id], [name]) VALUES (4, N'FU Cần Thơ')
SET IDENTITY_INSERT [dbo].[Campus] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [name], [code]) VALUES (1, N'Data Structures and Algorithms', N'CSD201')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (2, N'Data Structures and Algorithm with Python ', N'CSD203')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (3, N'Introduction to Databases ', N'DBI202')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (4, N'Advanced Algorithms ', N'CSD301')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (5, N'Data warehouse ', N'DBW301')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (6, N'Japanese IT Fundamentals', N'JFE301')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (7, N'Computer Networking', N'NWC203c')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (8, N'Operating Systems', N'OSG202')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (9, N'Programming Fundamentals with Python', N'PFP191')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (10, N'Excel Skills for Business', N'PRE201c')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (11, N'Programming Fundamentals', N'PRF192')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (12, N'Java Web Application Development', N'PRJ301')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (13, N'Basic Cross-Platform Application Programming With .NET', N'PRN211')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (14, N'Advanced Cross-Platform Application Programming With .NET', N'PRN221')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (15, N'Building Cross-Platform Back-End Application With .NET', N'PRN231')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (16, N'Object-Oriented Programming', N'PRO192')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (17, N'C# Programming and Unity', N'PRU211m')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (18, N'Object-Oriented Programming for Unity Games', N'PRU221m')
INSERT [dbo].[Course] ([id], [name], [code]) VALUES (19, N'Web Design', N'WED201c')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (1, N'SE1601', 3, 1)
INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (2, N'SE1602', 12, 1)
INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (3, N'SE1603', 3, 1)
INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (4, N'SE1604', 12, 1)
INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (5, N'SE1605', 3, 1)
INSERT [dbo].[Group] ([id], [name], [csid], [iid]) VALUES (6, N'SE1606', 12, 1)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Instructor] ON 

INSERT [dbo].[Instructor] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (1, N'sonnt5@fe.edu.vn', N'123', N'Ngo Tung Son', 1, N'sonnt5', NULL)
INSERT [dbo].[Instructor] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (2, N'hailt@fe.edu.vn', N'12345', N'Le Thanh Hai', 1, N'hailt', NULL)
INSERT [dbo].[Instructor] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (3, N'tuanvm2@fe.edu.vn', N'123', N'Vuong Minh Tuan', 1, N'tuanvm2', NULL)
INSERT [dbo].[Instructor] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (4, N'chilp@fe.edu.vn', N'12345', N'Le Phuong Chi', 1, N'chilp', NULL)
SET IDENTITY_INSERT [dbo].[Instructor] OFF
GO
SET IDENTITY_INSERT [dbo].[Lession] ON 

INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (1, 1, 1, 1, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (2, 1, 1, 2, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (3, 2, 1, 3, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (4, 2, 1, 4, 1, CAST(N'2022-06-06' AS Date), 1)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (5, 3, 1, 5, 1, CAST(N'2022-06-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (6, 3, 1, 6, 1, CAST(N'2022-06-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (8, 4, 1, 1, 2, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (10, 4, 1, 2, 2, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (11, 5, 1, 3, 2, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (12, 5, 1, 4, 2, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (14, 6, 1, 5, 3, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (15, 6, 1, 6, 3, CAST(N'2022-07-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (16, 1, 1, 1, 1, CAST(N'2022-08-06' AS Date), 1)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (17, 1, 1, 2, 1, CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (18, 2, 1, 3, 1, CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (19, 2, 1, 4, 1, CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (20, 3, 1, 5, 1, CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (21, 3, 1, 6, 1, CAST(N'2022-08-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (22, 4, 1, 1, 2, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (23, 4, 1, 2, 2, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (24, 5, 1, 3, 2, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (25, 5, 1, 4, 2, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (26, 6, 1, 5, 3, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (27, 6, 1, 6, 3, CAST(N'2022-09-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (28, 1, 1, 1, 1, CAST(N'2022-10-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (29, 2, 1, 3, 1, CAST(N'2022-10-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (30, 3, 1, 5, 1, CAST(N'2022-10-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (31, 4, 1, 2, 2, CAST(N'2022-10-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (32, 5, 1, 4, 2, CAST(N'2022-10-06' AS Date), 0)
INSERT [dbo].[Lession] ([id], [gid], [iid], [tid], [rid], [date], [status]) VALUES (33, 6, 1, 6, 3, CAST(N'2022-10-06' AS Date), 0)
SET IDENTITY_INSERT [dbo].[Lession] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([id], [name]) VALUES (1, N'DE-201')
INSERT [dbo].[Room] ([id], [name]) VALUES (2, N'DE-202')
INSERT [dbo].[Room] ([id], [name]) VALUES (3, N'DE-210')
INSERT [dbo].[Room] ([id], [name]) VALUES (4, N'DE-221')
INSERT [dbo].[Room] ([id], [name]) VALUES (5, N'DE-209')
INSERT [dbo].[Room] ([id], [name]) VALUES (6, N'DE-101')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

INSERT [dbo].[Student] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (1, N'tuyennvhe150819@fpt.edu.vn', N'12345', N'Nguyen Tuyen', 1, N'HE150819', N'HE150819.jpg')
INSERT [dbo].[Student] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (2, N'datndhe163390@fpt.edu.vn', N'12345', N'Nguyen Doan Dat', 1, N'HE163390', N'HE163390.jpg')
INSERT [dbo].[Student] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (3, N'hoangtthhe153437@fpt.edu.vn', N'12345', N'Tran Trung Huy Hoang', 1, N'HE153437', N'HE153437.jpg')
INSERT [dbo].[Student] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (4, N'vinhnthe163366@fpt.edu.vn', N'12345', N'Nguyen The Vinh', 1, N'HE163366', N'HE163366.jpg')
INSERT [dbo].[Student] ([id], [email], [password], [displayName], [cid], [code], [imageUrl]) VALUES (5, N'tunglqhe176371@fpt.edu.vn', N'123', N'Le Quang Tung', 1, N'HE176371', N'HE17631.jpg')
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
INSERT [dbo].[Student_Group] ([suid], [gid]) VALUES (1, 1)
INSERT [dbo].[Student_Group] ([suid], [gid]) VALUES (2, 1)
INSERT [dbo].[Student_Group] ([suid], [gid]) VALUES (3, 1)
INSERT [dbo].[Student_Group] ([suid], [gid]) VALUES (4, 2)
INSERT [dbo].[Student_Group] ([suid], [gid]) VALUES (5, 2)
GO
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (1, 1, N'present', CAST(N'2022-07-06T03:11:10.337' AS DateTime), N'rat tot')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (1, 2, N'present', CAST(N'2022-07-06T03:11:37.153' AS DateTime), N'rat tot')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (1, 16, N'present', CAST(N'2022-07-10T23:25:06.967' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (2, 1, N'present', CAST(N'2022-07-06T03:11:10.360' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (2, 2, N'present', CAST(N'2022-07-06T03:11:37.167' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (2, 16, N'present', CAST(N'2022-07-10T23:25:06.987' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (3, 1, N'present', CAST(N'2022-07-06T03:11:10.373' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (3, 2, N'absent', CAST(N'2022-07-06T03:11:37.180' AS DateTime), N'khong on')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (3, 16, N'absent', CAST(N'2022-07-10T23:25:07.000' AS DateTime), N'luoi hoc')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (4, 3, N'present', CAST(N'2022-07-09T04:25:57.640' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (4, 4, N'absent', CAST(N'2022-07-09T05:51:04.200' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (5, 3, N'present', CAST(N'2022-07-09T04:25:57.663' AS DateTime), N'')
INSERT [dbo].[Student_Lession] ([suid], [lid], [status], [recordtime], [comment]) VALUES (5, 4, N'absent', CAST(N'2022-07-09T05:51:04.217' AS DateTime), N'')
GO
SET IDENTITY_INSERT [dbo].[TimeSlot] ON 

INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (1, N'Slot 1', N'7:30 AM', N'9:00 AM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (2, N'Slot 2', N'9:10 AM', N'10:40 AM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (3, N'Slot 3', N'10:50 PM', N'12:20 PM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (4, N'Slot 4', N'12:50 PM', N'2:20 PM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (5, N'Slot 5', N'2:30 PM', N'4:00 PM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (6, N'Slot 6', N'4:10 PM', N'5:40 PM')
INSERT [dbo].[TimeSlot] ([id], [name], [start], [end]) VALUES (7, N'Slot 7', N'6:00 PM', N'7:30 PM')
SET IDENTITY_INSERT [dbo].[TimeSlot] OFF
GO
ALTER TABLE [dbo].[Student_Lession] ADD  CONSTRAINT [DF_Student_Lession_recordtime]  DEFAULT (getdate()) FOR [recordtime]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Course] FOREIGN KEY([csid])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Course]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Instructor] FOREIGN KEY([iid])
REFERENCES [dbo].[Instructor] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Instructor]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Campus] FOREIGN KEY([cid])
REFERENCES [dbo].[Campus] ([id])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Campus]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Group]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_Room] FOREIGN KEY([rid])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_Room]
GO
ALTER TABLE [dbo].[Lession]  WITH CHECK ADD  CONSTRAINT [FK_Lession_TimeSlot] FOREIGN KEY([tid])
REFERENCES [dbo].[TimeSlot] ([id])
GO
ALTER TABLE [dbo].[Lession] CHECK CONSTRAINT [FK_Lession_TimeSlot]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Group] FOREIGN KEY([gid])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Group]
GO
ALTER TABLE [dbo].[Student_Group]  WITH CHECK ADD  CONSTRAINT [FK_Student_Group_Student] FOREIGN KEY([suid])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Group] CHECK CONSTRAINT [FK_Student_Group_Student]
GO
ALTER TABLE [dbo].[Student_Lession]  WITH CHECK ADD  CONSTRAINT [FK_Student_Lession_Lession] FOREIGN KEY([lid])
REFERENCES [dbo].[Lession] ([id])
GO
ALTER TABLE [dbo].[Student_Lession] CHECK CONSTRAINT [FK_Student_Lession_Lession]
GO
ALTER TABLE [dbo].[Student_Lession]  WITH CHECK ADD  CONSTRAINT [FK_Student_Lession_Student] FOREIGN KEY([suid])
REFERENCES [dbo].[Student] ([id])
GO
ALTER TABLE [dbo].[Student_Lession] CHECK CONSTRAINT [FK_Student_Lession_Student]
GO
USE [master]
GO
ALTER DATABASE [Assignment] SET  READ_WRITE 
GO
