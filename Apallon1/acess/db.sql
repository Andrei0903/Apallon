USE [master]
GO
/****** Object:  Database [SuperShop]    Script Date: 25.01.2021 23:55:54 ******/
CREATE DATABASE [SuperShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SuperShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SuperShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SuperShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\SuperShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SuperShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SuperShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SuperShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SuperShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SuperShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SuperShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SuperShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [SuperShop] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SuperShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SuperShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SuperShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SuperShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SuperShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SuperShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SuperShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SuperShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SuperShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SuperShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SuperShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SuperShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SuperShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SuperShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SuperShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SuperShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SuperShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SuperShop] SET  MULTI_USER 
GO
ALTER DATABASE [SuperShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SuperShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SuperShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SuperShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [SuperShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [SuperShop]
GO
/****** Object:  Table [dbo].[Администрация]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Администрация](
	[код_админа] [int] NULL,
	[Фамилия] [nvarchar](50) NULL,
	[имя] [nvarchar](50) NULL,
	[отчество] [nvarchar](50) NULL,
	[пол] [nvarchar](2) NULL,
	[Должность] [nvarchar](50) NULL,
	[Дата_выхода] [date] NULL,
	[тэг] [nvarchar](20) NULL,
	[код] [nvarchar](30) NULL,
	[пароль] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Клиенты]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Клиенты](
	[код_клиента] [int] NOT NULL,
	[имя] [nvarchar](50) NULL,
	[фамилия] [nvarchar](50) NULL,
	[отчество] [nvarchar](50) NULL,
	[телефон] [nvarchar](50) NULL,
	[email] [nvarchar](150) NULL,
	[пол] [nvarchar](1) NULL,
	[логин] [nvarchar](50) NULL,
	[пароль] [nvarchar](50) NULL,
	[фото] [nvarchar](50) NULL,
 CONSTRAINT [PK_Клиенты] PRIMARY KEY CLUSTERED 
(
	[код_клиента] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Покупка]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Покупка](
	[код_Покупки] [int] NULL,
	[код_клиента] [int] NULL,
	[код_товара] [int] NULL,
	[Количество] [int] NULL,
	[дата_покупки] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Поставка]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставка](
	[код_поставки] [int] NULL,
	[код_поставщика] [int] NULL,
	[код_товара] [int] NULL,
	[количество] [int] NULL,
	[цена_поставки] [money] NULL,
	[дата_поставки] [date] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Поставщик]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Поставщик](
	[код_поставщика] [int] NOT NULL,
	[наименование_фирмы] [nvarchar](50) NULL,
	[фамилия] [nvarchar](50) NULL,
	[имя] [nvarchar](50) NULL,
	[отчество] [nvarchar](50) NULL,
	[адрес] [nvarchar](50) NULL,
	[телефон] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Поставщик] PRIMARY KEY CLUSTERED 
(
	[код_поставщика] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Товар]    Script Date: 25.01.2021 23:55:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Товар](
	[код_товара] [int] NOT NULL,
	[Наименование] [nvarchar](150) NULL,
	[Цена] [money] NULL,
	[Срок_Годности] [date] NULL,
	[Описание] [text] NULL,
 CONSTRAINT [PK_Товар] PRIMARY KEY CLUSTERED 
(
	[код_товара] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Администрация] ([код_админа], [Фамилия], [имя], [отчество], [пол], [Должность], [Дата_выхода], [тэг], [код], [пароль]) VALUES (1, N'Вальев', N'Анастас', N'Михалков', N'м', N'Директор', CAST(N'2004-12-12' AS Date), N'Директор', N'123 323 233', N'000111')
INSERT [dbo].[Администрация] ([код_админа], [Фамилия], [имя], [отчество], [пол], [Должность], [Дата_выхода], [тэг], [код], [пароль]) VALUES (2, N'Марьева', N'Анастасия', N'Маркова', N'ж', N'Заместитель директора', CAST(N'2006-01-12' AS Date), N'Зам', N'322 311 222', N'892313')
INSERT [dbo].[Администрация] ([код_админа], [Фамилия], [имя], [отчество], [пол], [Должность], [Дата_выхода], [тэг], [код], [пароль]) VALUES (3, N'Марина', N'Фиолета', N'Александровна', N'ж', N'Администратор', CAST(N'2006-04-03' AS Date), N'Админ', N'333 113 123', N'783422')
INSERT [dbo].[Администрация] ([код_админа], [Фамилия], [имя], [отчество], [пол], [Должность], [Дата_выхода], [тэг], [код], [пароль]) VALUES (4, N'Ларин', N'Александр', N'Петрович', N'м', N'Касир ', CAST(N'2008-01-03' AS Date), N'Касир', N'113 132 123', N'333221')
INSERT [dbo].[Клиенты] ([код_клиента], [имя], [фамилия], [отчество], [телефон], [email], [пол], [логин], [пароль], [фото]) VALUES (1, N'Роман', N'Романов', N'Романович', N'13234', N'-', N'м', N'123123', N'123123', NULL)
INSERT [dbo].[Клиенты] ([код_клиента], [имя], [фамилия], [отчество], [телефон], [email], [пол], [логин], [пароль], [фото]) VALUES (2, N'ewer', N'qweqwe', N'wqeqew', N'3324', N'wefwef@mail.ru', N'м', N'1233123', N'123123', NULL)
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Клиенты] FOREIGN KEY([код_клиента])
REFERENCES [dbo].[Клиенты] ([код_клиента])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Клиенты]
GO
ALTER TABLE [dbo].[Покупка]  WITH CHECK ADD  CONSTRAINT [FK_Покупка_Товар] FOREIGN KEY([код_товара])
REFERENCES [dbo].[Товар] ([код_товара])
GO
ALTER TABLE [dbo].[Покупка] CHECK CONSTRAINT [FK_Покупка_Товар]
GO
ALTER TABLE [dbo].[Поставка]  WITH CHECK ADD  CONSTRAINT [FK_Поставка_Поставщик] FOREIGN KEY([код_поставщика])
REFERENCES [dbo].[Поставщик] ([код_поставщика])
GO
ALTER TABLE [dbo].[Поставка] CHECK CONSTRAINT [FK_Поставка_Поставщик]
GO
ALTER TABLE [dbo].[Поставка]  WITH CHECK ADD  CONSTRAINT [FK_Поставка_Товар] FOREIGN KEY([код_товара])
REFERENCES [dbo].[Товар] ([код_товара])
GO
ALTER TABLE [dbo].[Поставка] CHECK CONSTRAINT [FK_Поставка_Товар]
GO
USE [master]
GO
ALTER DATABASE [SuperShop] SET  READ_WRITE 
GO
