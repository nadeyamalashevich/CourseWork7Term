USE [master]
GO
/****** Object:  Database [Cinema]    Script Date: 15.12.2015 0:52:08 ******/
CREATE DATABASE [CinemaDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CinemaDB', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CinemaDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CinemaDB_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CinemaDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CinemaDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CinemaDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CinemaDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CinemaDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CinemaDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CinemaDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CinemaDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CinemaDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CinemaDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CinemaDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CinemaDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CinemaDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CinemaDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CinemaDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CinemaDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CinemaDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CinemaDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CinemaDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CinemaDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CinemaDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CinemaDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CinemaDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CinemaDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CinemaDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CinemaDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CinemaDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CinemaDB] SET  MULTI_USER 
GO
ALTER DATABASE [CinemaDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CinemaDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CinemaDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CinemaDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CinemaDB]
GO
/****** Object:  Table [dbo].[actor]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actor](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](200) NOT NULL,
 CONSTRAINT [PK_actor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cinema]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cinema](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](100) NOT NULL,
	[location] [nchar](300) NULL,
	[work_time] [nchar](100) NULL,
	[phone] [nchar](20) NULL,
 CONSTRAINT [PK_cinema] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cinema_place]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cinema_place](
	[place_id] [int] NOT NULL,
	[cinema_id] [int] NOT NULL,
 CONSTRAINT [PK_cinema_place_1] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC,
	[cinema_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[country]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](50) NOT NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](200) NOT NULL,
	[duration] [nchar](20) NULL,
	[age_limit] [int] NULL,
	[release_date] [date] NOT NULL,
	[description] [text] NULL,
	[average_mark] [float] NOT NULL,
 CONSTRAINT [PK_film] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_actor]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_actor](
	[film_id] [int] NOT NULL,
	[actor_id] [int] NOT NULL,
 CONSTRAINT [PK_film_actor] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC,
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_country]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_country](
	[film_id] [int] NOT NULL,
	[country_id] [int] NOT NULL,
 CONSTRAINT [PK_film_country] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC,
	[country_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_genre]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_genre](
	[film_id] [int] NOT NULL,
	[genre_id] [int] NOT NULL,
 CONSTRAINT [PK_film_genre] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC,
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_producer]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_producer](
	[film_id] [int] NOT NULL,
	[producer_id] [int] NOT NULL,
 CONSTRAINT [PK_film_producer] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC,
	[producer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_profile_mark]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_profile_mark](
	[mark_id] [int] NOT NULL,
	[profile_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
 CONSTRAINT [PK_film_profile_mark] PRIMARY KEY CLUSTERED 
(
	[profile_id] ASC,
	[film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[film_screemwriter]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[film_screemwriter](
	[film_id] [int] NOT NULL,
	[screenwriter_id] [int] NOT NULL,
 CONSTRAINT [PK_film_screemwriter] PRIMARY KEY CLUSTERED 
(
	[film_id] ASC,
	[screenwriter_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[genre]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genre](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](100) NOT NULL,
 CONSTRAINT [PK_genre] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mark]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mark](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](100) NOT NULL,
	[value] [int] NOT NULL,
 CONSTRAINT [PK_mark] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[place]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[place](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[range] [int] NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_place] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[producer]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producer](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](200) NOT NULL,
 CONSTRAINT [PK_producer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[profile]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profile](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[login] [nchar](100) NOT NULL,
	[is_admin] [bit] NOT NULL,
 CONSTRAINT [PK_profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[screenwriter]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screenwriter](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nchar](200) NOT NULL,
 CONSTRAINT [PK_screenwriter] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[session]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[session](
	[cinema_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
	[start_time] [datetime] NOT NULL,
	[ticket_cost] [int] NOT NULL,
 CONSTRAINT [PK_session] PRIMARY KEY CLUSTERED 
(
	[cinema_id] ASC,
	[film_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[temp]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[temp](
	[id] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ticket]    Script Date: 15.12.2015 0:52:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ticket](
	[is_bought] [bit] NOT NULL,
	[profile_id] [int] NULL,
	[cinema_id] [int] NOT NULL,
	[film_id] [int] NOT NULL,
	[place_id] [int] NOT NULL,
	[buy_date] [datetime] NULL,
 CONSTRAINT [PK_ticket] PRIMARY KEY CLUSTERED 
(
	[cinema_id] ASC,
	[film_id] ASC,
	[place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[cinema_place]  WITH CHECK ADD  CONSTRAINT [cinema_id] FOREIGN KEY([cinema_id])
REFERENCES [dbo].[cinema] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cinema_place] CHECK CONSTRAINT [cinema_id]
GO
ALTER TABLE [dbo].[cinema_place]  WITH CHECK ADD  CONSTRAINT [place_id] FOREIGN KEY([place_id])
REFERENCES [dbo].[place] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cinema_place] CHECK CONSTRAINT [place_id]
GO
ALTER TABLE [dbo].[film_actor]  WITH CHECK ADD  CONSTRAINT [film_actor_actor] FOREIGN KEY([actor_id])
REFERENCES [dbo].[actor] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_actor] CHECK CONSTRAINT [film_actor_actor]
GO
ALTER TABLE [dbo].[film_actor]  WITH CHECK ADD  CONSTRAINT [film_actor_film] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_actor] CHECK CONSTRAINT [film_actor_film]
GO
ALTER TABLE [dbo].[film_country]  WITH CHECK ADD  CONSTRAINT [country_id] FOREIGN KEY([country_id])
REFERENCES [dbo].[country] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_country] CHECK CONSTRAINT [country_id]
GO
ALTER TABLE [dbo].[film_country]  WITH CHECK ADD  CONSTRAINT [film_c_id] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_country] CHECK CONSTRAINT [film_c_id]
GO
ALTER TABLE [dbo].[film_genre]  WITH CHECK ADD  CONSTRAINT [film_g_id] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_genre] CHECK CONSTRAINT [film_g_id]
GO
ALTER TABLE [dbo].[film_genre]  WITH CHECK ADD  CONSTRAINT [genre_id] FOREIGN KEY([genre_id])
REFERENCES [dbo].[genre] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_genre] CHECK CONSTRAINT [genre_id]
GO
ALTER TABLE [dbo].[film_producer]  WITH CHECK ADD  CONSTRAINT [film_producer_film] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_producer] CHECK CONSTRAINT [film_producer_film]
GO
ALTER TABLE [dbo].[film_producer]  WITH CHECK ADD  CONSTRAINT [film_producer_producer] FOREIGN KEY([producer_id])
REFERENCES [dbo].[producer] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_producer] CHECK CONSTRAINT [film_producer_producer]
GO
ALTER TABLE [dbo].[film_profile_mark]  WITH CHECK ADD  CONSTRAINT [film_profile_mark_film] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_profile_mark] CHECK CONSTRAINT [film_profile_mark_film]
GO
ALTER TABLE [dbo].[film_profile_mark]  WITH CHECK ADD  CONSTRAINT [film_profile_mark_mark] FOREIGN KEY([mark_id])
REFERENCES [dbo].[mark] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_profile_mark] CHECK CONSTRAINT [film_profile_mark_mark]
GO
ALTER TABLE [dbo].[film_profile_mark]  WITH CHECK ADD  CONSTRAINT [film_profile_mark_profile] FOREIGN KEY([profile_id])
REFERENCES [dbo].[profile] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_profile_mark] CHECK CONSTRAINT [film_profile_mark_profile]
GO
ALTER TABLE [dbo].[film_screemwriter]  WITH CHECK ADD  CONSTRAINT [film_screemwriter_film] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_screemwriter] CHECK CONSTRAINT [film_screemwriter_film]
GO
ALTER TABLE [dbo].[film_screemwriter]  WITH CHECK ADD  CONSTRAINT [film_screemwriter_screemwriter] FOREIGN KEY([screenwriter_id])
REFERENCES [dbo].[screenwriter] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[film_screemwriter] CHECK CONSTRAINT [film_screemwriter_screemwriter]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [session_cinema] FOREIGN KEY([cinema_id])
REFERENCES [dbo].[cinema] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [session_cinema]
GO
ALTER TABLE [dbo].[session]  WITH CHECK ADD  CONSTRAINT [session_film] FOREIGN KEY([film_id])
REFERENCES [dbo].[film] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[session] CHECK CONSTRAINT [session_film]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [ticket_place] FOREIGN KEY([place_id])
REFERENCES [dbo].[place] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [ticket_place]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [ticket_profile] FOREIGN KEY([profile_id])
REFERENCES [dbo].[profile] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [ticket_profile]
GO
ALTER TABLE [dbo].[ticket]  WITH CHECK ADD  CONSTRAINT [ticket_session] FOREIGN KEY([cinema_id], [film_id])
REFERENCES [dbo].[session] ([cinema_id], [film_id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ticket] CHECK CONSTRAINT [ticket_session]
GO
USE [master]
GO
ALTER DATABASE [CinemaDB] SET  READ_WRITE 
GO
