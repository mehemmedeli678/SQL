USE [master]
GO
/****** Object:  Database [MetaDB2]    Script Date: 26.01.2022 11:59:36 ******/
CREATE DATABASE [MetaDB2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MetaDB2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER03\MSSQL\DATA\MetaDB2.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MetaDB2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER03\MSSQL\DATA\MetaDB2_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MetaDB2] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MetaDB2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MetaDB2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MetaDB2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MetaDB2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MetaDB2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MetaDB2] SET ARITHABORT OFF 
GO
ALTER DATABASE [MetaDB2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MetaDB2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MetaDB2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MetaDB2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MetaDB2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MetaDB2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MetaDB2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MetaDB2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MetaDB2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MetaDB2] SET  ENABLE_BROKER 
GO
ALTER DATABASE [MetaDB2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MetaDB2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MetaDB2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MetaDB2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MetaDB2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MetaDB2] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [MetaDB2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MetaDB2] SET RECOVERY FULL 
GO
ALTER DATABASE [MetaDB2] SET  MULTI_USER 
GO
ALTER DATABASE [MetaDB2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MetaDB2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MetaDB2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MetaDB2] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MetaDB2] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MetaDB2] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'MetaDB2', N'ON'
GO
ALTER DATABASE [MetaDB2] SET QUERY_STORE = OFF
GO
USE [MetaDB2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Audio]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Audio](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AudioKey] [nvarchar](max) NULL,
	[AudioName] [nvarchar](max) NULL,
	[UrlID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Audio] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Buying]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Buying](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[FilmID] [int] NOT NULL,
	[BuyingDate] [datetime2](7) NOT NULL,
	[Deadline] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Buying] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CategoryLanguage]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoryLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LanguageKey] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_CategoryLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CinemaLab]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaLab](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[UrlID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_CinemaLab] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CinemaLabToComment]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CinemaLabToComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NOT NULL,
	[CinemaLabID] [int] NOT NULL,
 CONSTRAINT [PK_CinemaLabToComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Text] [nvarchar](max) NULL,
	[Spolier] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Comment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CommentToComment]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CommentToComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CommentID] [int] NOT NULL,
	[ReplyCommentId] [int] NOT NULL,
 CONSTRAINT [PK_CommentToComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Content]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MainPicture] [nvarchar](max) NULL,
	[Age] [nvarchar](max) NULL,
	[IsFree] [bit] NOT NULL,
	[Hit] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[TypeID] [int] NOT NULL,
	[AddDate] [datetime2](7) NOT NULL,
	[ContentDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Content] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentLanguage]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[LanguageKey] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_ContentLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentToActor]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentToActor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[ActorID] [int] NOT NULL,
 CONSTRAINT [PK_ContentToActor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentToCategory]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentToCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ContentToCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContentToDirector]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContentToDirector](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[DirectorID] [int] NOT NULL,
 CONSTRAINT [PK_ContentToDirector] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Director](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Picture] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoryContent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoryContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_FavoryContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavorySeries]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavorySeries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SeriesID] [int] NOT NULL,
 CONSTRAINT [PK_FavorySeries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Film]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Film](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[UrlID] [int] NULL,
	[Imdb] [decimal](18, 2) NOT NULL,
	[IsSubscribe] [bit] NOT NULL,
 CONSTRAINT [PK_Film] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FilmToComment]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FilmToComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FilmID] [int] NOT NULL,
	[CommentID] [int] NOT NULL,
 CONSTRAINT [PK_FilmToComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[UrlID] [int] NOT NULL,
 CONSTRAINT [PK_History] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Language]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikedContent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikedContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
 CONSTRAINT [PK_LikedContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LikedSeries]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LikedSeries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SeriesID] [int] NOT NULL,
	[LikedDate] [datetime2](7) NOT NULL,
	[ContentID] [int] NULL,
 CONSTRAINT [PK_LikedSeries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paket]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsAdvertise] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[ActiveDate] [int] NOT NULL,
 CONSTRAINT [PK_Paket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayFullFilm]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayFullFilm](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FilmID] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[Discount] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_PayFullFilm] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Season]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Season](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TvShowID] [int] NOT NULL,
	[SeasonNumber] [nvarchar](max) NULL,
	[MainPicture] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Season] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Series]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Series](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeasonID] [int] NOT NULL,
	[SeriaNumber] [nvarchar](max) NULL,
	[UrlID] [int] NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Series] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeriesLanguage]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeriesLanguage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeriesID] [int] NOT NULL,
	[LanguageKey] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SeriesLanguage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeriesToComment]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeriesToComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SeriesID] [int] NOT NULL,
	[CommentID] [int] NOT NULL,
 CONSTRAINT [PK_SeriesToComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subscriber]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscriber](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SubscriptionDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Subscriber] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubscriperToPaket]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubscriperToPaket](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PaketID] [int] NOT NULL,
	[PaketDate] [datetime2](7) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
	[SubscriberID] [int] NOT NULL,
 CONSTRAINT [PK_SubscriperToPaket] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subtitle]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subtitle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SubtitleKey] [nvarchar](max) NULL,
	[SubtitleName] [nvarchar](max) NULL,
	[UrlID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Subtitle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trailer]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trailer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Url] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Trailer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrailerToContent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrailerToContent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ContentID] [int] NOT NULL,
	[TrailerID] [int] NOT NULL,
 CONSTRAINT [PK_TrailerToContent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrailerToSeason]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrailerToSeason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrailerID] [int] NOT NULL,
	[SeasonID] [int] NOT NULL,
 CONSTRAINT [PK_TrailerToSeason] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrailerToSeries]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrailerToSeries](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TrailerID] [int] NOT NULL,
	[SeriesID] [int] NOT NULL,
 CONSTRAINT [PK_TrailerToSeries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TvShow]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TvShow](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Imdb] [decimal](18, 2) NOT NULL,
	[ContentID] [int] NOT NULL,
	[IsSubscribe] [bit] NOT NULL,
 CONSTRAINT [PK_TvShow] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Type]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Type] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Url]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Url](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UrlName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Url] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[RegisterDate] [datetime2](7) NOT NULL,
	[PasswordHash] [varbinary](max) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedOn] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserToRole]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserToRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_UserToRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220104124128_initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220104130833_url', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220104131946_des', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105091904_update', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105092734_initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105104021_initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105105648_Initial', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105112452_con', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105121853_active', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105122553_Content', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105124156_IS', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105124526_ISSubcribe', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105134259_activedate', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105134343_intactivedate', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105165523_subs', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220105165847_subscrib', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220106114616_asdasdcx', N'5.0.13')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220116185917_initial', N'5.0.13')
GO
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (21, N'Robert', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (22, N'Jack', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (23, N'Marlon', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (24, N'Denzel', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (25, N'Meryl', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (26, N'Peter', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (27, N'Samuel', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (28, N'Faye', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (29, N'Tom', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Actor] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (30, N'Robert', NULL, 0, 0, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Actor] OFF
GO
SET IDENTITY_INSERT [dbo].[Audio] ON 

INSERT [dbo].[Audio] ([ID], [AudioKey], [AudioName], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'Turkce Dublaj', N'asdhgasgdh', 1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Audio] ([ID], [AudioKey], [AudioName], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'Rusca dublaj', N'dsdfsdf', 1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Audio] OFF
GO
SET IDENTITY_INSERT [dbo].[Buying] ON 

INSERT [dbo].[Buying] ([ID], [UserID], [FilmID], [BuyingDate], [Deadline], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 1, 1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Buying] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([ID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([ID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Category] ([ID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (4, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[CategoryLanguage] ON 

INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (1, N'EN', N'Dram', 1)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (2, N'RU', N'драм', 1)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (3, N'TR', N'Dram', 1)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (4, N'AZ', N'Dram', 1)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (7, N'EN', N'Comedy', 2)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (8, N'RU', N'комедия', 2)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (9, N'TR', N'komedi', 2)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (10, N'AZ', N'Komediya', 2)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (11, N'EN', N'Action', 3)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (12, N'RU', N'действие', 3)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (13, N'TR', N'Aksiyon', 3)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (14, N'AZ', N'hərəkət', 3)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (15, N'EN', N'Fear', 4)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (16, N'RU', N'страх', 4)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (17, N'TR', N'Korku', 4)
INSERT [dbo].[CategoryLanguage] ([ID], [LanguageKey], [Name], [CategoryID]) VALUES (18, N'AZ', N'Qorxu', 4)
SET IDENTITY_INSERT [dbo].[CategoryLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[CinemaLab] ON 

INSERT [dbo].[CinemaLab] ([ID], [ContentID], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 4, 4, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[CinemaLab] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([ID], [UserID], [Text], [Spolier], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 1, N'Eladir baxmaga deyer', 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([ID], [UserID], [Text], [Spolier], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, 1, N'sey sey danisma', 1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([ID], [UserID], [Text], [Spolier], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, 1, N'Danisir da sene ne ', 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([ID], [UserID], [Text], [Spolier], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (4, 1, N'Pisdir', 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Comment] ([ID], [UserID], [Text], [Spolier], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (5, 1, N'Yaxsi dedin qaqa', 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[CommentToComment] ON 

INSERT [dbo].[CommentToComment] ([ID], [CommentID], [ReplyCommentId]) VALUES (1, 1, 2)
INSERT [dbo].[CommentToComment] ([ID], [CommentID], [ReplyCommentId]) VALUES (2, 1, 3)
INSERT [dbo].[CommentToComment] ([ID], [CommentID], [ReplyCommentId]) VALUES (5, 4, 5)
SET IDENTITY_INSERT [dbo].[CommentToComment] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (2, N'sdasasd', N'', 1, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (3, N'sdasasd', N'', 1, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (4, N'sdasasd', N'18+', 0, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 3, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (5, N'sdasasd', N'', 1, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (6, N'sdasasd', N'', 1, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 2, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Content] ([ID], [MainPicture], [Age], [IsFree], [Hit], [IsActive], [IsDeleted], [ModifiedOn], [TypeID], [AddDate], [ContentDate]) VALUES (7, N'sdasasd', N'', 1, 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentLanguage] ON 

INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (1, 2, N'AZ', N'Con Vik', N'Yaxsi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (2, 2, N'EN', N'John Wick', N'Good')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (3, 2, N'RU', N'Джон Уик', N'хороший')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (4, 2, N'TR', N'Con Vik', N'iyi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (5, 3, N'AZ', N'Leyla ilə Məcnun', N'Yaxsi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (6, 3, N'EN', N'Leyla and Majnun', N'good')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (7, 3, N'TR', N'Leyla ile Mecnun', N'iyi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (8, 3, N'RU', N'Лейли и Маджнун ', N'хороший')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (9, 4, N'AZ', N'Sinema', N'Yaxsi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (10, 4, N'EN', N'Cinema', N'Good')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (11, 4, N'RU', N'Кинотеатр', N'хороший')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (12, 4, N'TR', N'Sinema', N'iyi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (13, 5, N'AZ', N'Qodzilla', N'Yaxsi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (14, 5, N'EN', N'Godzilla', N'Good')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (15, 6, N'AZ', N'Çernobıl', N'Yaxsi')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (16, 6, N'EN', N'Chernobyl', N'Good')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (17, 7, N'AZ', N'Şerlok', N'Yaxşı')
INSERT [dbo].[ContentLanguage] ([ID], [ContentID], [LanguageKey], [Name], [Description]) VALUES (18, 7, N'EN', N'Sherlock', N'Good')
SET IDENTITY_INSERT [dbo].[ContentLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentToActor] ON 

INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (2, 2, 21)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (3, 2, 22)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (4, 2, 23)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (5, 2, 24)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (6, 3, 25)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (7, 3, 26)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (8, 3, 23)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (9, 4, 25)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (10, 4, 30)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (12, 4, 29)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (13, 5, 24)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (14, 5, 25)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (15, 5, 22)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (16, 6, 23)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (18, 6, 24)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (19, 6, 27)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (20, 7, 30)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (21, 7, 29)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (22, 7, 27)
INSERT [dbo].[ContentToActor] ([ID], [ContentID], [ActorID]) VALUES (24, 7, 23)
SET IDENTITY_INSERT [dbo].[ContentToActor] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentToCategory] ON 

INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (1, 2, 1)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (2, 2, 2)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (3, 3, 3)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (4, 3, 4)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (6, 4, 4)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (7, 5, 2)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (8, 5, 1)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (9, 6, 3)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (10, 6, 4)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (11, 7, 1)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (12, 7, 3)
INSERT [dbo].[ContentToCategory] ([ID], [ContentID], [CategoryID]) VALUES (15, 7, 2)
SET IDENTITY_INSERT [dbo].[ContentToCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ContentToDirector] ON 

INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (2, 2, 1)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (3, 2, 2)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (4, 3, 3)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (5, 3, 4)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (6, 4, 5)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (7, 4, 6)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (8, 5, 1)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (9, 5, 3)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (10, 6, 2)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (11, 6, 4)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (12, 7, 5)
INSERT [dbo].[ContentToDirector] ([ID], [ContentID], [DirectorID]) VALUES (13, 7, 6)
SET IDENTITY_INSERT [dbo].[ContentToDirector] OFF
GO
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'ALFRED HITCHCOCK', N'asd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'ORSON WELLES', N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, N'HOWARD HAWKS', N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (4, N'MARTIN SCORSESE', N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (5, N'JOHN HUSTON', N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Director] ([ID], [Name], [Picture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (6, N'ROBERT ALTMAN', N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Director] OFF
GO
SET IDENTITY_INSERT [dbo].[FavoryContent] ON 

INSERT [dbo].[FavoryContent] ([ID], [ContentID], [UserID]) VALUES (1, 2, 1)
INSERT [dbo].[FavoryContent] ([ID], [ContentID], [UserID]) VALUES (2, 4, 1)
SET IDENTITY_INSERT [dbo].[FavoryContent] OFF
GO
SET IDENTITY_INSERT [dbo].[Film] ON 

INSERT [dbo].[Film] ([ID], [ContentID], [UrlID], [Imdb], [IsSubscribe]) VALUES (1, 2, 1, CAST(7.80 AS Decimal(18, 2)), 0)
INSERT [dbo].[Film] ([ID], [ContentID], [UrlID], [Imdb], [IsSubscribe]) VALUES (2, 5, 2, CAST(6.50 AS Decimal(18, 2)), 0)
INSERT [dbo].[Film] ([ID], [ContentID], [UrlID], [Imdb], [IsSubscribe]) VALUES (5, 7, 3, CAST(6.80 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[Film] OFF
GO
SET IDENTITY_INSERT [dbo].[FilmToComment] ON 

INSERT [dbo].[FilmToComment] ([ID], [FilmID], [CommentID]) VALUES (1, 1, 1)
INSERT [dbo].[FilmToComment] ([ID], [FilmID], [CommentID]) VALUES (2, 2, 1)
SET IDENTITY_INSERT [dbo].[FilmToComment] OFF
GO
SET IDENTITY_INSERT [dbo].[Language] ON 

INSERT [dbo].[Language] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'AZ', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Language] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'EN', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Language] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, N'RU', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Language] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (4, N'TR', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Language] OFF
GO
SET IDENTITY_INSERT [dbo].[Paket] ON 

INSERT [dbo].[Paket] ([ID], [Name], [Price], [IsAdvertise], [IsActive], [IsDeleted], [ModifiedOn], [ActiveDate]) VALUES (2, N'1 ay reklamli', CAST(10.00 AS Decimal(18, 2)), 1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 30)
INSERT [dbo].[Paket] ([ID], [Name], [Price], [IsAdvertise], [IsActive], [IsDeleted], [ModifiedOn], [ActiveDate]) VALUES (3, N'1 ay reklamsiz', CAST(15.00 AS Decimal(18, 2)), 0, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 30)
SET IDENTITY_INSERT [dbo].[Paket] OFF
GO
SET IDENTITY_INSERT [dbo].[PayFullFilm] ON 

INSERT [dbo].[PayFullFilm] ([ID], [FilmID], [Price], [IsActive], [IsDeleted], [ModifiedOn], [Discount]) VALUES (1, 1, CAST(20.00 AS Decimal(18, 2)), 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), CAST(0.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[PayFullFilm] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'Admin', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Role] ([ID], [Name], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'User', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Season] ON 

INSERT [dbo].[Season] ([ID], [TvShowID], [SeasonNumber], [MainPicture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 1, N'1', N'sdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Season] ([ID], [TvShowID], [SeasonNumber], [MainPicture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, 1, N'2', N'sdSD', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Season] ([ID], [TvShowID], [SeasonNumber], [MainPicture], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, 2, N'1', N'aafdwe', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Season] OFF
GO
SET IDENTITY_INSERT [dbo].[Series] ON 

INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, 1, N'1', 5, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, 1, N'2', 6, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (3, 1, N'3', 7, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (4, 2, N'1', 8, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (5, 2, N'2', 9, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (6, 3, N'1', 10, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Series] ([ID], [SeasonID], [SeriaNumber], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (8, 3, N'2', 11, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Series] OFF
GO
SET IDENTITY_INSERT [dbo].[SeriesLanguage] ON 

INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (1, 1, N'AZ', N'Yaxsi 1')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (2, 1, N'EN', N'Good 1')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (3, 2, N'AZ', N'yaxsi 2')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (4, 2, N'EN', N'Good 2')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (5, 3, N'AZ', N'Yaxsi 3')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (6, 3, N'EN', N'Good 3')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (7, 4, N'AZ', N'Yaxsi 4')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (8, 4, N'EN', N'Good 4')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (9, 5, N'AZ', N'Yaxsi 5')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (10, 5, N'EN', N'Good 5')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (11, 6, N'AZ', N'Yaxsi 6')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (12, 6, N'EN', N'Good 6')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (14, 8, N'AZ', N'Yaxsi 7')
INSERT [dbo].[SeriesLanguage] ([ID], [SeriesID], [LanguageKey], [Description]) VALUES (15, 8, N'EN', N'Good 7')
SET IDENTITY_INSERT [dbo].[SeriesLanguage] OFF
GO
SET IDENTITY_INSERT [dbo].[SeriesToComment] ON 

INSERT [dbo].[SeriesToComment] ([ID], [SeriesID], [CommentID]) VALUES (1, 1, 4)
INSERT [dbo].[SeriesToComment] ([ID], [SeriesID], [CommentID]) VALUES (2, 2, 4)
INSERT [dbo].[SeriesToComment] ([ID], [SeriesID], [CommentID]) VALUES (3, 3, 4)
INSERT [dbo].[SeriesToComment] ([ID], [SeriesID], [CommentID]) VALUES (4, 5, 4)
INSERT [dbo].[SeriesToComment] ([ID], [SeriesID], [CommentID]) VALUES (5, 6, 4)
SET IDENTITY_INSERT [dbo].[SeriesToComment] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscriber] ON 

INSERT [dbo].[Subscriber] ([ID], [UserID], [SubscriptionDate], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, 1, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Subscriber] OFF
GO
SET IDENTITY_INSERT [dbo].[SubscriperToPaket] ON 

INSERT [dbo].[SubscriperToPaket] ([ID], [PaketID], [PaketDate], [IsActive], [IsDeleted], [ModifiedOn], [SubscriberID]) VALUES (2, 2, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2), 2)
SET IDENTITY_INSERT [dbo].[SubscriperToPaket] OFF
GO
SET IDENTITY_INSERT [dbo].[Subtitle] ON 

INSERT [dbo].[Subtitle] ([ID], [SubtitleKey], [SubtitleName], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'Turkce Altyazili', N'Altyazili', 1, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Subtitle] ([ID], [SubtitleKey], [SubtitleName], [UrlID], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'Ingilisce Altyazili', N'Altyazili', 2, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Subtitle] OFF
GO
SET IDENTITY_INSERT [dbo].[Trailer] ON 

INSERT [dbo].[Trailer] ([ID], [Url], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Trailer] ([ID], [Url], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (2, N'asdasd', 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Trailer] OFF
GO
SET IDENTITY_INSERT [dbo].[TvShow] ON 

INSERT [dbo].[TvShow] ([ID], [Imdb], [ContentID], [IsSubscribe]) VALUES (1, CAST(6.70 AS Decimal(18, 2)), 3, 0)
INSERT [dbo].[TvShow] ([ID], [Imdb], [ContentID], [IsSubscribe]) VALUES (2, CAST(7.80 AS Decimal(18, 2)), 6, 0)
SET IDENTITY_INSERT [dbo].[TvShow] OFF
GO
SET IDENTITY_INSERT [dbo].[Type] ON 

INSERT [dbo].[Type] ([ID], [Name]) VALUES (1, N'Film')
INSERT [dbo].[Type] ([ID], [Name]) VALUES (2, N'TvShow')
INSERT [dbo].[Type] ([ID], [Name]) VALUES (3, N'CinemaLab')
SET IDENTITY_INSERT [dbo].[Type] OFF
GO
SET IDENTITY_INSERT [dbo].[Url] ON 

INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (1, N'asasd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (2, N'asd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (3, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (4, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (5, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (6, N'xcv')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (7, N'asd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (8, N'sdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (9, N'xc')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (10, N'sdjfhguasdgfsdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (11, N'sadf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (12, N'asd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (13, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (14, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (15, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (16, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (17, N'sadfasdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (18, N'sadf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (19, N'c')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (20, N'sad')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (21, N'fsd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (22, N'as')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (23, N'sdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (24, N'cv')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (25, N'sdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (26, N'sdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (27, N'sdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (28, N'asdfasdfasdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (29, N'sadf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (30, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (31, N'asdff')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (32, N'asdf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (33, N'sadf')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (34, N'sadff')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (35, N'sadff')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (36, N'c')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (37, N'vd')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (38, N'f')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (39, N'h')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (40, N'fghj')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (41, N'fgj')
INSERT [dbo].[Url] ([ID], [UrlName]) VALUES (42, N'df')
SET IDENTITY_INSERT [dbo].[Url] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [Name], [Email], [PhoneNumber], [RegisterDate], [PasswordHash], [IsActive], [IsDeleted], [ModifiedOn]) VALUES (1, N'Murad', N'murad@gmail.com', N'0555555555', CAST(N'2022-01-05T00:00:00.0000000' AS DateTime2), NULL, 1, 0, CAST(N'2022-01-01T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserToRole] ON 

INSERT [dbo].[UserToRole] ([ID], [UserID], [RoleID]) VALUES (1, 1, 1)
INSERT [dbo].[UserToRole] ([ID], [UserID], [RoleID]) VALUES (2, 1, 2)
SET IDENTITY_INSERT [dbo].[UserToRole] OFF
GO
/****** Object:  Index [IX_Audio_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Audio_UrlID] ON [dbo].[Audio]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Buying_FilmID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Buying_FilmID] ON [dbo].[Buying]
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Buying_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Buying_UserID] ON [dbo].[Buying]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CategoryLanguage_CategoryID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CategoryLanguage_CategoryID] ON [dbo].[CategoryLanguage]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaLab_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CinemaLab_ContentID] ON [dbo].[CinemaLab]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaLab_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CinemaLab_UrlID] ON [dbo].[CinemaLab]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaLabToComment_CinemaLabID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CinemaLabToComment_CinemaLabID] ON [dbo].[CinemaLabToComment]
(
	[CinemaLabID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CinemaLabToComment_CommentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CinemaLabToComment_CommentID] ON [dbo].[CinemaLabToComment]
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comment_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Comment_UserID] ON [dbo].[Comment]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommentToComment_CommentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CommentToComment_CommentID] ON [dbo].[CommentToComment]
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_CommentToComment_ReplyCommentId]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_CommentToComment_ReplyCommentId] ON [dbo].[CommentToComment]
(
	[ReplyCommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Content_TypeID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Content_TypeID] ON [dbo].[Content]
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentLanguage_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentLanguage_ContentID] ON [dbo].[ContentLanguage]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToActor_ActorID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToActor_ActorID] ON [dbo].[ContentToActor]
(
	[ActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToActor_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToActor_ContentID] ON [dbo].[ContentToActor]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToCategory_CategoryID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToCategory_CategoryID] ON [dbo].[ContentToCategory]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToCategory_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToCategory_ContentID] ON [dbo].[ContentToCategory]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToDirector_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToDirector_ContentID] ON [dbo].[ContentToDirector]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ContentToDirector_DirectorID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_ContentToDirector_DirectorID] ON [dbo].[ContentToDirector]
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FavoryContent_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FavoryContent_ContentID] ON [dbo].[FavoryContent]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FavoryContent_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FavoryContent_UserID] ON [dbo].[FavoryContent]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FavorySeries_SeriesID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FavorySeries_SeriesID] ON [dbo].[FavorySeries]
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FavorySeries_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FavorySeries_UserID] ON [dbo].[FavorySeries]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Film_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Film_ContentID] ON [dbo].[Film]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Film_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Film_UrlID] ON [dbo].[Film]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FilmToComment_CommentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FilmToComment_CommentID] ON [dbo].[FilmToComment]
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_FilmToComment_FilmID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_FilmToComment_FilmID] ON [dbo].[FilmToComment]
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_History_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_History_UrlID] ON [dbo].[History]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_History_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_History_UserID] ON [dbo].[History]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LikedContent_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_LikedContent_ContentID] ON [dbo].[LikedContent]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LikedContent_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_LikedContent_UserID] ON [dbo].[LikedContent]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LikedSeries_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_LikedSeries_ContentID] ON [dbo].[LikedSeries]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LikedSeries_SeriesID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_LikedSeries_SeriesID] ON [dbo].[LikedSeries]
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LikedSeries_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_LikedSeries_UserID] ON [dbo].[LikedSeries]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PayFullFilm_FilmID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_PayFullFilm_FilmID] ON [dbo].[PayFullFilm]
(
	[FilmID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Season_TvShowID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Season_TvShowID] ON [dbo].[Season]
(
	[TvShowID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Series_SeasonID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Series_SeasonID] ON [dbo].[Series]
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Series_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Series_UrlID] ON [dbo].[Series]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SeriesLanguage_SeriesID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_SeriesLanguage_SeriesID] ON [dbo].[SeriesLanguage]
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SeriesToComment_CommentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_SeriesToComment_CommentID] ON [dbo].[SeriesToComment]
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SeriesToComment_SeriesID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_SeriesToComment_SeriesID] ON [dbo].[SeriesToComment]
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subscriber_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Subscriber_UserID] ON [dbo].[Subscriber]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubscriperToPaket_PaketID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_SubscriperToPaket_PaketID] ON [dbo].[SubscriperToPaket]
(
	[PaketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SubscriperToPaket_SubscriberID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_SubscriperToPaket_SubscriberID] ON [dbo].[SubscriperToPaket]
(
	[SubscriberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Subtitle_UrlID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_Subtitle_UrlID] ON [dbo].[Subtitle]
(
	[UrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToContent_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToContent_ContentID] ON [dbo].[TrailerToContent]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToContent_TrailerID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToContent_TrailerID] ON [dbo].[TrailerToContent]
(
	[TrailerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToSeason_SeasonID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToSeason_SeasonID] ON [dbo].[TrailerToSeason]
(
	[SeasonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToSeason_TrailerID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToSeason_TrailerID] ON [dbo].[TrailerToSeason]
(
	[TrailerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToSeries_SeriesID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToSeries_SeriesID] ON [dbo].[TrailerToSeries]
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TrailerToSeries_TrailerID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TrailerToSeries_TrailerID] ON [dbo].[TrailerToSeries]
(
	[TrailerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_TvShow_ContentID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_TvShow_ContentID] ON [dbo].[TvShow]
(
	[ContentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserToRole_RoleID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_UserToRole_RoleID] ON [dbo].[UserToRole]
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserToRole_UserID]    Script Date: 26.01.2022 11:59:36 ******/
CREATE NONCLUSTERED INDEX [IX_UserToRole_UserID] ON [dbo].[UserToRole]
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Audio] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Audio] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Audio] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Content] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [AddDate]
GO
ALTER TABLE [dbo].[Content] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ContentDate]
GO
ALTER TABLE [dbo].[Film] ADD  CONSTRAINT [DF__Film__Imdb__40058253]  DEFAULT ((0.0)) FOR [Imdb]
GO
ALTER TABLE [dbo].[Film] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSubscribe]
GO
ALTER TABLE [dbo].[Paket] ADD  DEFAULT ((0)) FOR [ActiveDate]
GO
ALTER TABLE [dbo].[PayFullFilm] ADD  DEFAULT ((0.0)) FOR [Discount]
GO
ALTER TABLE [dbo].[SubscriperToPaket] ADD  DEFAULT ((0)) FOR [SubscriberID]
GO
ALTER TABLE [dbo].[Subtitle] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Subtitle] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Subtitle] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[TvShow] ADD  DEFAULT ((0.0)) FOR [Imdb]
GO
ALTER TABLE [dbo].[TvShow] ADD  DEFAULT ((0)) FOR [ContentID]
GO
ALTER TABLE [dbo].[TvShow] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsSubscribe]
GO
ALTER TABLE [dbo].[Audio]  WITH CHECK ADD  CONSTRAINT [FK_Audio_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Audio] CHECK CONSTRAINT [FK_Audio_Url_UrlID]
GO
ALTER TABLE [dbo].[Buying]  WITH CHECK ADD  CONSTRAINT [FK_Buying_Film_FilmID] FOREIGN KEY([FilmID])
REFERENCES [dbo].[Film] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buying] CHECK CONSTRAINT [FK_Buying_Film_FilmID]
GO
ALTER TABLE [dbo].[Buying]  WITH CHECK ADD  CONSTRAINT [FK_Buying_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Buying] CHECK CONSTRAINT [FK_Buying_User_UserID]
GO
ALTER TABLE [dbo].[CategoryLanguage]  WITH CHECK ADD  CONSTRAINT [FK_CategoryLanguage_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CategoryLanguage] CHECK CONSTRAINT [FK_CategoryLanguage_Category_CategoryID]
GO
ALTER TABLE [dbo].[CinemaLab]  WITH CHECK ADD  CONSTRAINT [FK_CinemaLab_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaLab] CHECK CONSTRAINT [FK_CinemaLab_Content_ContentID]
GO
ALTER TABLE [dbo].[CinemaLab]  WITH CHECK ADD  CONSTRAINT [FK_CinemaLab_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaLab] CHECK CONSTRAINT [FK_CinemaLab_Url_UrlID]
GO
ALTER TABLE [dbo].[CinemaLabToComment]  WITH CHECK ADD  CONSTRAINT [FK_CinemaLabToComment_CinemaLab_CinemaLabID] FOREIGN KEY([CinemaLabID])
REFERENCES [dbo].[CinemaLab] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaLabToComment] CHECK CONSTRAINT [FK_CinemaLabToComment_CinemaLab_CinemaLabID]
GO
ALTER TABLE [dbo].[CinemaLabToComment]  WITH CHECK ADD  CONSTRAINT [FK_CinemaLabToComment_Comment_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CinemaLabToComment] CHECK CONSTRAINT [FK_CinemaLabToComment_Comment_CommentID]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User_UserID]
GO
ALTER TABLE [dbo].[CommentToComment]  WITH CHECK ADD  CONSTRAINT [FK_CommentToComment_Comment] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([ID])
GO
ALTER TABLE [dbo].[CommentToComment] CHECK CONSTRAINT [FK_CommentToComment_Comment]
GO
ALTER TABLE [dbo].[CommentToComment]  WITH CHECK ADD  CONSTRAINT [FK_CommentToComment_Comment1] FOREIGN KEY([ReplyCommentId])
REFERENCES [dbo].[Comment] ([ID])
GO
ALTER TABLE [dbo].[CommentToComment] CHECK CONSTRAINT [FK_CommentToComment_Comment1]
GO
ALTER TABLE [dbo].[Content]  WITH CHECK ADD  CONSTRAINT [FK_Content_Type_TypeID] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Type] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Content] CHECK CONSTRAINT [FK_Content_Type_TypeID]
GO
ALTER TABLE [dbo].[ContentLanguage]  WITH CHECK ADD  CONSTRAINT [FK_ContentLanguage_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentLanguage] CHECK CONSTRAINT [FK_ContentLanguage_Content_ContentID]
GO
ALTER TABLE [dbo].[ContentToActor]  WITH CHECK ADD  CONSTRAINT [FK_ContentToActor_Actor_ActorID] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actor] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToActor] CHECK CONSTRAINT [FK_ContentToActor_Actor_ActorID]
GO
ALTER TABLE [dbo].[ContentToActor]  WITH CHECK ADD  CONSTRAINT [FK_ContentToActor_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToActor] CHECK CONSTRAINT [FK_ContentToActor_Content_ContentID]
GO
ALTER TABLE [dbo].[ContentToCategory]  WITH CHECK ADD  CONSTRAINT [FK_ContentToCategory_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToCategory] CHECK CONSTRAINT [FK_ContentToCategory_Category_CategoryID]
GO
ALTER TABLE [dbo].[ContentToCategory]  WITH CHECK ADD  CONSTRAINT [FK_ContentToCategory_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToCategory] CHECK CONSTRAINT [FK_ContentToCategory_Content_ContentID]
GO
ALTER TABLE [dbo].[ContentToDirector]  WITH CHECK ADD  CONSTRAINT [FK_ContentToDirector_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToDirector] CHECK CONSTRAINT [FK_ContentToDirector_Content_ContentID]
GO
ALTER TABLE [dbo].[ContentToDirector]  WITH CHECK ADD  CONSTRAINT [FK_ContentToDirector_Director_DirectorID] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Director] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ContentToDirector] CHECK CONSTRAINT [FK_ContentToDirector_Director_DirectorID]
GO
ALTER TABLE [dbo].[FavoryContent]  WITH CHECK ADD  CONSTRAINT [FK_FavoryContent_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoryContent] CHECK CONSTRAINT [FK_FavoryContent_Content_ContentID]
GO
ALTER TABLE [dbo].[FavoryContent]  WITH CHECK ADD  CONSTRAINT [FK_FavoryContent_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavoryContent] CHECK CONSTRAINT [FK_FavoryContent_User_UserID]
GO
ALTER TABLE [dbo].[FavorySeries]  WITH CHECK ADD  CONSTRAINT [FK_FavorySeries_Series_SeriesID] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavorySeries] CHECK CONSTRAINT [FK_FavorySeries_Series_SeriesID]
GO
ALTER TABLE [dbo].[FavorySeries]  WITH CHECK ADD  CONSTRAINT [FK_FavorySeries_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FavorySeries] CHECK CONSTRAINT [FK_FavorySeries_User_UserID]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_Content_ContentID]
GO
ALTER TABLE [dbo].[Film]  WITH CHECK ADD  CONSTRAINT [FK_Film_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Film] CHECK CONSTRAINT [FK_Film_Url_UrlID]
GO
ALTER TABLE [dbo].[FilmToComment]  WITH CHECK ADD  CONSTRAINT [FK_FilmToComment_Comment_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FilmToComment] CHECK CONSTRAINT [FK_FilmToComment_Comment_CommentID]
GO
ALTER TABLE [dbo].[FilmToComment]  WITH CHECK ADD  CONSTRAINT [FK_FilmToComment_Film_FilmID] FOREIGN KEY([FilmID])
REFERENCES [dbo].[Film] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FilmToComment] CHECK CONSTRAINT [FK_FilmToComment_Film_FilmID]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_Url_UrlID]
GO
ALTER TABLE [dbo].[History]  WITH CHECK ADD  CONSTRAINT [FK_History_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[History] CHECK CONSTRAINT [FK_History_User_UserID]
GO
ALTER TABLE [dbo].[LikedContent]  WITH CHECK ADD  CONSTRAINT [FK_LikedContent_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikedContent] CHECK CONSTRAINT [FK_LikedContent_Content_ContentID]
GO
ALTER TABLE [dbo].[LikedContent]  WITH CHECK ADD  CONSTRAINT [FK_LikedContent_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikedContent] CHECK CONSTRAINT [FK_LikedContent_User_UserID]
GO
ALTER TABLE [dbo].[LikedSeries]  WITH CHECK ADD  CONSTRAINT [FK_LikedSeries_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
GO
ALTER TABLE [dbo].[LikedSeries] CHECK CONSTRAINT [FK_LikedSeries_Content_ContentID]
GO
ALTER TABLE [dbo].[LikedSeries]  WITH CHECK ADD  CONSTRAINT [FK_LikedSeries_Series_SeriesID] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikedSeries] CHECK CONSTRAINT [FK_LikedSeries_Series_SeriesID]
GO
ALTER TABLE [dbo].[LikedSeries]  WITH CHECK ADD  CONSTRAINT [FK_LikedSeries_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LikedSeries] CHECK CONSTRAINT [FK_LikedSeries_User_UserID]
GO
ALTER TABLE [dbo].[PayFullFilm]  WITH CHECK ADD  CONSTRAINT [FK_PayFullFilm_Film_FilmID] FOREIGN KEY([FilmID])
REFERENCES [dbo].[Film] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PayFullFilm] CHECK CONSTRAINT [FK_PayFullFilm_Film_FilmID]
GO
ALTER TABLE [dbo].[Season]  WITH CHECK ADD  CONSTRAINT [FK_Season_TvShow_TvShowID] FOREIGN KEY([TvShowID])
REFERENCES [dbo].[TvShow] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Season] CHECK CONSTRAINT [FK_Season_TvShow_TvShowID]
GO
ALTER TABLE [dbo].[Series]  WITH CHECK ADD  CONSTRAINT [FK_Series_Season_SeasonID] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Series] CHECK CONSTRAINT [FK_Series_Season_SeasonID]
GO
ALTER TABLE [dbo].[Series]  WITH CHECK ADD  CONSTRAINT [FK_Series_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Series] CHECK CONSTRAINT [FK_Series_Url_UrlID]
GO
ALTER TABLE [dbo].[SeriesLanguage]  WITH CHECK ADD  CONSTRAINT [FK_SeriesLanguage_Series_SeriesID] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SeriesLanguage] CHECK CONSTRAINT [FK_SeriesLanguage_Series_SeriesID]
GO
ALTER TABLE [dbo].[SeriesToComment]  WITH CHECK ADD  CONSTRAINT [FK_SeriesToComment_Comment_CommentID] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SeriesToComment] CHECK CONSTRAINT [FK_SeriesToComment_Comment_CommentID]
GO
ALTER TABLE [dbo].[SeriesToComment]  WITH CHECK ADD  CONSTRAINT [FK_SeriesToComment_Series_SeriesID] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SeriesToComment] CHECK CONSTRAINT [FK_SeriesToComment_Series_SeriesID]
GO
ALTER TABLE [dbo].[Subscriber]  WITH CHECK ADD  CONSTRAINT [FK_Subscriber_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subscriber] CHECK CONSTRAINT [FK_Subscriber_User_UserID]
GO
ALTER TABLE [dbo].[SubscriperToPaket]  WITH CHECK ADD  CONSTRAINT [FK_SubscriperToPaket_Paket_PaketID] FOREIGN KEY([PaketID])
REFERENCES [dbo].[Paket] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubscriperToPaket] CHECK CONSTRAINT [FK_SubscriperToPaket_Paket_PaketID]
GO
ALTER TABLE [dbo].[SubscriperToPaket]  WITH CHECK ADD  CONSTRAINT [FK_SubscriperToPaket_Subscriber_SubscriberID] FOREIGN KEY([SubscriberID])
REFERENCES [dbo].[Subscriber] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubscriperToPaket] CHECK CONSTRAINT [FK_SubscriperToPaket_Subscriber_SubscriberID]
GO
ALTER TABLE [dbo].[Subtitle]  WITH CHECK ADD  CONSTRAINT [FK_Subtitle_Url_UrlID] FOREIGN KEY([UrlID])
REFERENCES [dbo].[Url] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subtitle] CHECK CONSTRAINT [FK_Subtitle_Url_UrlID]
GO
ALTER TABLE [dbo].[TrailerToContent]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToContent_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToContent] CHECK CONSTRAINT [FK_TrailerToContent_Content_ContentID]
GO
ALTER TABLE [dbo].[TrailerToContent]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToContent_Trailer_TrailerID] FOREIGN KEY([TrailerID])
REFERENCES [dbo].[Trailer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToContent] CHECK CONSTRAINT [FK_TrailerToContent_Trailer_TrailerID]
GO
ALTER TABLE [dbo].[TrailerToSeason]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToSeason_Season_SeasonID] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToSeason] CHECK CONSTRAINT [FK_TrailerToSeason_Season_SeasonID]
GO
ALTER TABLE [dbo].[TrailerToSeason]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToSeason_Trailer_TrailerID] FOREIGN KEY([TrailerID])
REFERENCES [dbo].[Trailer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToSeason] CHECK CONSTRAINT [FK_TrailerToSeason_Trailer_TrailerID]
GO
ALTER TABLE [dbo].[TrailerToSeries]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToSeries_Series_SeriesID] FOREIGN KEY([SeriesID])
REFERENCES [dbo].[Series] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToSeries] CHECK CONSTRAINT [FK_TrailerToSeries_Series_SeriesID]
GO
ALTER TABLE [dbo].[TrailerToSeries]  WITH CHECK ADD  CONSTRAINT [FK_TrailerToSeries_Trailer_TrailerID] FOREIGN KEY([TrailerID])
REFERENCES [dbo].[Trailer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrailerToSeries] CHECK CONSTRAINT [FK_TrailerToSeries_Trailer_TrailerID]
GO
ALTER TABLE [dbo].[TvShow]  WITH CHECK ADD  CONSTRAINT [FK_TvShow_Content_ContentID] FOREIGN KEY([ContentID])
REFERENCES [dbo].[Content] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TvShow] CHECK CONSTRAINT [FK_TvShow_Content_ContentID]
GO
ALTER TABLE [dbo].[UserToRole]  WITH CHECK ADD  CONSTRAINT [FK_UserToRole_Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserToRole] CHECK CONSTRAINT [FK_UserToRole_Role_RoleID]
GO
ALTER TABLE [dbo].[UserToRole]  WITH CHECK ADD  CONSTRAINT [FK_UserToRole_User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserToRole] CHECK CONSTRAINT [FK_UserToRole_User_UserID]
GO
/****** Object:  StoredProcedure [dbo].[GetActorByContent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetActorByContent]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    SELECT d.ID ,d.Name ,d.Picture, d.IsActive,d.IsDeleted,d.ModifiedOn from Actor d
		join ContentToActor cd on cd.ActorID=d.ID
		where cd.ContentID=@id
    -- Insert statements for procedure here
END
GO
/****** Object:  StoredProcedure [dbo].[GetCategoryBycontent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetCategoryBycontent]
	-- Add the parameters for the stored procedure here
	@id int,
	@key nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

       SELECT d.ID,d.IsActive,d.IsDeleted,d.ModifiedOn,cl.Name from Category d
		join ContentToCategory cd on cd.CategoryID=d.ID
		join CategoryLanguage cl on cl.CategoryID=d.ID
		where cd.ContentID=@id and cl.LanguageKey=@key
END
GO
/****** Object:  StoredProcedure [dbo].[GetDirectorBycontent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetDirectorBycontent]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	    SELECT d.ID ,d.Name ,d.Picture, d.IsActive,d.IsDeleted,d.ModifiedOn from Director d
		join ContentToDirector cd on cd.DirectorID=d.ID
		where cd.ContentID=@id
END
GO
/****** Object:  StoredProcedure [dbo].[GetFilmByContent]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetFilmByContent]
	-- Add the parameters for the stored procedure here
@id int ,
@key nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT f.ID as FilmID,f.Imdb,f.IsSubscribe ,c.ID as ContentID,c.MainPicture,c.Age,c.IsFree,c.Hit,c.AddDate,c.ContentDate,cl.Name,cl.Description,u.ID as UrlId, u.UrlName FROM Film f
	JOIN Url u on u.ID= f.ID
	JOIN Content c on c.ID=f.ContentID
	join ContentLanguage cl on cl.ContentID=c.ID
	where c.ID=@id and cl.LanguageKey=@key
END
GO
/****** Object:  StoredProcedure [dbo].[GetSeriesById]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetSeriesById]
	-- Add the parameters for the stored procedure here
@id int,
@key nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select ss.ID, sn.ID as SeasonID, ss.SeriaNumber,ss.IsActive,ss.IsDeleted,ss.ModifiedOn,sn.SeasonNumber,sn.MainPicture as SeasonPicture,tw.Imdb,tw.IsSubscribe,ct.ID as ContentId,ct.MainPicture as ContentPicture,ct.Age,ct.IsFree,ct.Hit,tw.ID as TwShowId,ctl.Name,u.ID as UrlId,u.UrlName,ssg.Description from Series ss
	join Season sn on ss.SeasonID=sn.ID
	join TvShow tw on sn.TvShowID=tw.ID
	join Content ct on ct.ID=tw.ContentID
	join ContentLanguage ctl on ctl.ContentID=ct.ID
	join Url u on u.ID=ss.UrlID
	join SeriesLanguage ssg on ssg.SeriesID=ss.ID
	where ss.ID=@id and ctl.LanguageKey=@key and ssg.LanguageKey=@key
END
GO
/****** Object:  StoredProcedure [dbo].[GetTvShowById]    Script Date: 26.01.2022 11:59:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[GetTvShowById]
	-- Add the parameters for the stored procedure here
	@id int,
	@key nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT c.ID as ContentId, ctl.Name,ctl.Description,c.MainPicture, tv.ID,tv.Imdb,t.Name as Type,c.Age,c.ContentDate,c.AddDate, c.IsFree,c.Hit,c.IsActive,c.IsDeleted from TvShow tv
	join Content c on c.ID=tv.ContentID
	join ContentLanguage ctl on ctl.ContentID=c.ID
	join Type t on c.TypeID=t.ID
	where c.ID=@id  and ctl.LanguageKey=@key

END
GO
USE [master]
GO
ALTER DATABASE [MetaDB2] SET  READ_WRITE 
GO
