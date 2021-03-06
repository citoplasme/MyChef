USE [master]
GO
/****** Object:  Database [LI4DB]    Script Date: 05/06/2019 10:41:44 ******/
CREATE DATABASE [LI4DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LI4DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LI4DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LI4DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\LI4DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [LI4DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LI4DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LI4DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LI4DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LI4DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LI4DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LI4DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [LI4DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LI4DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LI4DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LI4DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LI4DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LI4DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LI4DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LI4DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LI4DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LI4DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LI4DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LI4DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LI4DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LI4DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LI4DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LI4DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LI4DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LI4DB] SET RECOVERY FULL 
GO
ALTER DATABASE [LI4DB] SET  MULTI_USER 
GO
ALTER DATABASE [LI4DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LI4DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LI4DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LI4DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LI4DB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LI4DB', N'ON'
GO
ALTER DATABASE [LI4DB] SET QUERY_STORE = OFF
GO
USE [LI4DB]
GO
/****** Object:  Table [dbo].[Alergias]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alergias](
	[Utilizadorid] [int] NOT NULL,
	[Tipoid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Utilizadorid] ASC,
	[Tipoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingrediente]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingrediente](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](70) NOT NULL,
	[Tipoid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Utilizadorid] [int] NOT NULL,
	[inicio] [datetime] NOT NULL,
	[fim] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menu_Receita]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu_Receita](
	[dia] [datetime] NOT NULL,
	[Receitaid] [int] NOT NULL,
	[Menuid] [int] NOT NULL,
 CONSTRAINT [PK_Menu_Receita] PRIMARY KEY CLUSTERED 
(
	[dia] ASC,
	[Receitaid] ASC,
	[Menuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passo]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passo](
	[Numero] [int] NOT NULL,
	[Descricao] [varchar](255) NOT NULL,
	[Tempo_Estimado] [float] NOT NULL,
	[Receitaid] [int] NOT NULL,
 CONSTRAINT [PK__Passo__27FDD4F16AA7CB9B] PRIMARY KEY CLUSTERED 
(
	[Numero] ASC,
	[Receitaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](100) NOT NULL,
	[dificuldade] [int] NOT NULL,
	[descricao] [varchar](200) NULL,
	[nutricao] [real] NULL,
	[Categoriaid] [int] NOT NULL,
	[video] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita_Passo_Ingrediente]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita_Passo_Ingrediente](
	[quantidade] [int] NOT NULL,
	[PassoNumero] [int] NOT NULL,
	[Ingredienteid] [int] NOT NULL,
	[PassoReceitaid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PassoNumero] ASC,
	[Ingredienteid] ASC,
	[PassoReceitaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita_Receita]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita_Receita](
	[Receitaid] [int] NOT NULL,
	[Receitaid2] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Receitaid] ASC,
	[Receitaid2] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receita_Utensilio]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receita_Utensilio](
	[Receitaid] [int] NOT NULL,
	[Utensilioid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Receitaid] ASC,
	[Utensilioid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Receitas_Favoritas]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Receitas_Favoritas](
	[Utilizadorid] [int] NOT NULL,
	[Receitaid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Utilizadorid] ASC,
	[Receitaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regime_Alimentar]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regime_Alimentar](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descricao] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utensilio]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utensilio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](70) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](80) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[Regime_Alimentarid] [int] NOT NULL,
	[admin] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador_Ingrediente]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador_Ingrediente](
	[quantidade] [int] NULL,
	[Utilizadorid] [int] NOT NULL,
	[Ingredienteid] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Utilizadorid] ASC,
	[Ingredienteid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador_Passo_Receita]    Script Date: 05/06/2019 10:41:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador_Passo_Receita](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[tempo_real] [float] NULL,
	[Utilizadorid] [int] NOT NULL,
	[PassoNumero] [int] NOT NULL,
	[dificuldades] [varchar](200) NULL,
	[data] [datetime] NOT NULL,
	[PassoReceitaid] [int] NOT NULL,
 CONSTRAINT [PK__Utilizad__3214EC2786C1DED1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categoria] ON 

INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (1, N'Auxiliar')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (2, N'Cake')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (3, N'Mousse')
INSERT [dbo].[Categoria] ([id], [descricao]) VALUES (4, N'Ice Cream')
SET IDENTITY_INSERT [dbo].[Categoria] OFF
SET IDENTITY_INSERT [dbo].[Ingrediente] ON 

INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (1, N'Sugar', 1)
INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (2, N'Wheat Flour', 2)
INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (3, N'Margarine', 3)
INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (4, N'Egg', 4)
INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (5, N'Milk', 3)
INSERT [dbo].[Ingrediente] ([id], [nome], [Tipoid]) VALUES (6, N'Baking Powder', 2)
SET IDENTITY_INSERT [dbo].[Ingrediente] OFF
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (94, 31, CAST(N'2019-06-01T00:00:00.000' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (95, 31, CAST(N'2019-07-01T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (96, 32, CAST(N'2019-06-01T00:00:00.000' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (97, 32, CAST(N'2019-05-01T00:00:00.000' AS DateTime), CAST(N'2019-05-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (98, 33, CAST(N'2019-06-01T00:00:00.000' AS DateTime), CAST(N'2019-06-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (99, 34, CAST(N'2019-07-01T00:00:00.000' AS DateTime), CAST(N'2019-07-07T00:00:00.000' AS DateTime))
INSERT [dbo].[Menu] ([id], [Utilizadorid], [inicio], [fim]) VALUES (100, 34, CAST(N'2019-06-24T00:00:00.000' AS DateTime), CAST(N'2019-06-30T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-01T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-02T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-03T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-04T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-05T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-06T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-05-07T00:00:00.000' AS DateTime), 2, 97)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-01T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-01T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-02T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-02T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-03T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-03T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-03T00:00:00.000' AS DateTime), 2, 98)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-04T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-04T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-05T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-05T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-06T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-06T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-07T00:00:00.000' AS DateTime), 2, 94)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-07T00:00:00.000' AS DateTime), 2, 96)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-06-25T00:00:00.000' AS DateTime), 2, 100)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-01T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-02T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-03T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-04T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-05T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-06T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Menu_Receita] ([dia], [Receitaid], [Menuid]) VALUES (CAST(N'2019-07-07T00:00:00.000' AS DateTime), 2, 99)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (1, N'Split the egg yolks from the egg whites.', 2, 1)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (1, N'Beat the egg whites and hold.', 5, 2)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (2, N'Put the egg whites on a bowl.', 1, 1)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (2, N'Mix the egg yolks, margarine and sugar.', 5, 2)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (3, N'Beat them in a mixer until you can turn the bowl upside down without them falling.', 10, 1)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (3, N'Add the milk and the flour, don´t stop beating.', 3, 2)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (4, N'Add the egg whites and the baking powder, don´t stop beating.', 3, 2)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (5, N'Put the cream on a pan, greased and floured.', 2, 2)
INSERT [dbo].[Passo] ([Numero], [Descricao], [Tempo_Estimado], [Receitaid]) VALUES (6, N'Put the cream in a preheated 180 degree oven.', 40, 2)
SET IDENTITY_INSERT [dbo].[Receita] ON 

INSERT [dbo].[Receita] ([id], [nome], [dificuldade], [descricao], [nutricao], [Categoriaid], [video]) VALUES (1, N'Beat Egg Whites', 1, N'Egg Whites became solid and ready to use on a cake', 0, 1, NULL)
INSERT [dbo].[Receita] ([id], [nome], [dificuldade], [descricao], [nutricao], [Categoriaid], [video]) VALUES (2, N'Simple Cake', 2, N'Simple cake, easy for begginers', 200, 2, NULL)
SET IDENTITY_INSERT [dbo].[Receita] OFF
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (1, 1, 4, 1)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (3, 1, 4, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (480, 2, 1, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (60, 2, 3, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (3, 2, 4, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (720, 3, 2, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (360, 3, 5, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (3, 4, 4, 2)
INSERT [dbo].[Receita_Passo_Ingrediente] ([quantidade], [PassoNumero], [Ingredienteid], [PassoReceitaid]) VALUES (14, 4, 6, 2)
INSERT [dbo].[Receita_Receita] ([Receitaid], [Receitaid2]) VALUES (2, 1)
INSERT [dbo].[Receita_Utensilio] ([Receitaid], [Utensilioid]) VALUES (1, 1)
INSERT [dbo].[Receita_Utensilio] ([Receitaid], [Utensilioid]) VALUES (2, 1)
INSERT [dbo].[Receita_Utensilio] ([Receitaid], [Utensilioid]) VALUES (2, 2)
INSERT [dbo].[Receitas_Favoritas] ([Utilizadorid], [Receitaid]) VALUES (19, 2)
INSERT [dbo].[Receitas_Favoritas] ([Utilizadorid], [Receitaid]) VALUES (30, 2)
INSERT [dbo].[Receitas_Favoritas] ([Utilizadorid], [Receitaid]) VALUES (31, 2)
INSERT [dbo].[Receitas_Favoritas] ([Utilizadorid], [Receitaid]) VALUES (34, 2)
SET IDENTITY_INSERT [dbo].[Regime_Alimentar] ON 

INSERT [dbo].[Regime_Alimentar] ([id], [nome]) VALUES (1, N'Vegan')
INSERT [dbo].[Regime_Alimentar] ([id], [nome]) VALUES (2, N'Vegetarian')
INSERT [dbo].[Regime_Alimentar] ([id], [nome]) VALUES (3, N'Lactose-free')
INSERT [dbo].[Regime_Alimentar] ([id], [nome]) VALUES (4, N'Other')
SET IDENTITY_INSERT [dbo].[Regime_Alimentar] OFF
SET IDENTITY_INSERT [dbo].[Tipo] ON 

INSERT [dbo].[Tipo] ([id], [descricao]) VALUES (1, N'Sweet')
INSERT [dbo].[Tipo] ([id], [descricao]) VALUES (2, N'Flour')
INSERT [dbo].[Tipo] ([id], [descricao]) VALUES (3, N'Dairy')
INSERT [dbo].[Tipo] ([id], [descricao]) VALUES (4, N'Animal')
SET IDENTITY_INSERT [dbo].[Tipo] OFF
SET IDENTITY_INSERT [dbo].[Utensilio] ON 

INSERT [dbo].[Utensilio] ([id], [nome]) VALUES (1, N'Mixer')
INSERT [dbo].[Utensilio] ([id], [nome]) VALUES (2, N'spatula')
SET IDENTITY_INSERT [dbo].[Utensilio] OFF
SET IDENTITY_INSERT [dbo].[Utilizador] ON 

INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (16, N'jaime', N'1234', N'jaime-leite@live.com.pt', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (17, N'aaaa', N'1234', N'aaaa', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (18, N'jaime', N'81dc9bdb52d04dc20036dbd8313ed055', N'cenas', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (19, N'jaime ', N'202cb962ac59075b964b07152d234b70', N'jaime@live.com.pt', 4, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (20, N'joao', N'asdas', N'cefasda', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (21, N'cenas', N'81dc9bdb52d04dc20036dbd8313ed055', N'jj@gmail.com', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (22, N'joao', N'asdas', N'cefasda', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (23, N'j', N'b59c67bf196a4758191e42f76670ceba', N'email', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (24, N'joao', N'81dc9bdb52d04dc20036dbd8313ed055', N'jaime-leite@live.com', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (25, N'cenas', N'81dc9bdb52d04dc20036dbd8313ed055', N'sdf', 4, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (26, N'sdfsd', N'bf42ebeb44b59488215dfe9fa7975eda', N'sasd', 3, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (27, N'dfsdf', N'84d9cfc2f395ce883a41d7ffc1bbcf4e', N'dd', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (28, N'cenas', N'c20ad4d76fe97759aa27a0c99bff6710', N'manel@gmail.com', 1, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (29, N'cenas', N'b59c67bf196a4758191e42f76670ceba', N'jl@gmail.com', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (30, N'ricardo', N'b59c67bf196a4758191e42f76670ceba', N'ricardo@gmail.com', 3, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (31, N'user', N'c81e728d9d4c2f636f067f89cc14862c', N'user@gmail.com', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (32, N'ee', N'b59c67bf196a4758191e42f76670ceba', N'ee@gmail.com', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (33, N'hh', N'b59c67bf196a4758191e42f76670ceba', N'hh@gmail.com', 2, 0)
INSERT [dbo].[Utilizador] ([id], [nome], [password], [email], [Regime_Alimentarid], [admin]) VALUES (34, N'carlos', N'202cb962ac59075b964b07152d234b70', N'jose@gmail.com', 4, 0)
SET IDENTITY_INSERT [dbo].[Utilizador] OFF
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 1)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 2)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 3)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 4)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 5)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (5000, 29, 6)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (40, 30, 1)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (0, 30, 2)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (920, 30, 3)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1000, 30, 4)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (420, 30, 5)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (972, 30, 6)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1040, 31, 1)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (560, 31, 2)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1880, 31, 3)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1994, 31, 4)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1280, 31, 5)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1972, 31, 6)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (520, 32, 1)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (280, 32, 2)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (940, 32, 3)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (997, 32, 4)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (640, 32, 5)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (986, 32, 6)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (1040, 34, 1)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (560, 34, 2)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (880, 34, 3)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (994, 34, 4)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (280, 34, 5)
INSERT [dbo].[Utilizador_Ingrediente] ([quantidade], [Utilizadorid], [Ingredienteid]) VALUES (972, 34, 6)
SET IDENTITY_INSERT [dbo].[Utilizador_Passo_Receita] ON 

INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (343, 0.73333333333333328, 30, 1, N'', CAST(N'2019-03-06T14:23:20.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (344, 0.46666666666666667, 30, 2, N'', CAST(N'2019-03-06T14:24:04.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (345, 1.0333333333333334, 30, 3, N'', CAST(N'2019-03-06T14:24:32.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (346, 0.58333333333333337, 30, 2, N'', CAST(N'2019-03-06T14:25:34.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (347, 1.0333333333333334, 30, 3, N'', CAST(N'2019-03-06T14:26:09.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (348, 0.6, 30, 4, N'', CAST(N'2019-03-06T14:27:11.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (349, 2.0166666666666666, 30, 5, N'pouco tempo de preparação', CAST(N'2019-03-06T14:27:47.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (350, 0.4, 30, 6, N'', CAST(N'2019-03-06T14:29:48.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (351, 0.033333333333333333, 31, 1, N'', CAST(N'2019-03-06T15:53:00.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (352, 0, 31, 2, N'', CAST(N'2019-03-06T15:53:02.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (353, 0, 31, 3, N'asasf', CAST(N'2019-03-06T15:53:02.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (354, 0, 31, 4, N'', CAST(N'2019-03-06T15:53:02.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (355, 0.016666666666666666, 31, 5, N'', CAST(N'2019-03-06T15:53:02.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (356, 0, 31, 6, N'', CAST(N'2019-03-06T15:53:03.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (357, 0.016666666666666666, 31, 1, N'', CAST(N'2019-03-06T15:53:19.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (358, 0.016666666666666666, 31, 2, N'', CAST(N'2019-03-06T15:53:20.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (359, 0, 31, 3, N'', CAST(N'2019-03-06T15:53:21.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (360, 0, 31, 2, N'', CAST(N'2019-03-06T15:53:21.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (361, 0.016666666666666666, 31, 3, N'', CAST(N'2019-03-06T15:53:21.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (362, 0, 31, 4, N'', CAST(N'2019-03-06T15:53:22.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (363, 0, 31, 5, N'', CAST(N'2019-03-06T15:53:22.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (364, 0.016666666666666666, 31, 6, N'asdasd', CAST(N'2019-03-06T15:53:22.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (365, 0.033333333333333333, 32, 1, N'', CAST(N'2019-03-06T16:01:27.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (366, 0.016666666666666666, 32, 2, N'', CAST(N'2019-03-06T16:01:29.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (367, 0.016666666666666666, 32, 3, N'', CAST(N'2019-03-06T16:01:30.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (368, 0.05, 32, 2, N'sdgsdfd', CAST(N'2019-03-06T16:01:31.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (369, 0, 32, 3, N'', CAST(N'2019-03-06T16:01:34.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (370, 0.016666666666666666, 32, 4, N'', CAST(N'2019-03-06T16:01:34.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (371, 0.016666666666666666, 32, 5, N'', CAST(N'2019-03-06T16:01:35.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (372, 0, 32, 6, N'', CAST(N'2019-03-06T16:01:36.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (373, 0.11666666666666667, 34, 1, N'Sim, foi dificil', CAST(N'2019-05-06T09:26:36.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (374, 0.1, 34, 2, N'', CAST(N'2019-05-06T09:26:43.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (375, 0.016666666666666666, 34, 3, N'', CAST(N'2019-05-06T09:26:49.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (376, 0.016666666666666666, 34, 4, N'', CAST(N'2019-05-06T09:26:50.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (377, 0, 34, 5, N'', CAST(N'2019-05-06T09:26:51.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (378, 0.016666666666666666, 34, 6, N'Oh pa foi pouco tempo', CAST(N'2019-05-06T09:26:51.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (379, 0.083333333333333329, 34, 1, N'', CAST(N'2019-05-06T09:27:45.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (380, 0.11666666666666667, 34, 2, N'', CAST(N'2019-05-06T09:27:50.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (381, 0.033333333333333333, 34, 3, N'', CAST(N'2019-05-06T09:27:57.000' AS DateTime), 1)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (382, 0.15, 34, 2, N'esta feito', CAST(N'2019-05-06T09:27:59.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (383, 0.016666666666666666, 34, 3, N'esta feitooooo', CAST(N'2019-05-06T09:28:08.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (384, 0, 34, 4, N'', CAST(N'2019-05-06T09:28:09.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (385, 0, 34, 4, N'', CAST(N'2019-05-06T09:28:09.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (386, 0, 34, 5, N'', CAST(N'2019-05-06T09:28:09.000' AS DateTime), 2)
INSERT [dbo].[Utilizador_Passo_Receita] ([ID], [tempo_real], [Utilizadorid], [PassoNumero], [dificuldades], [data], [PassoReceitaid]) VALUES (387, 0.016666666666666666, 34, 6, N'esta feito', CAST(N'2019-05-06T09:28:09.000' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[Utilizador_Passo_Receita] OFF
ALTER TABLE [dbo].[Alergias]  WITH CHECK ADD  CONSTRAINT [FKAlergias422145] FOREIGN KEY([Tipoid])
REFERENCES [dbo].[Tipo] ([id])
GO
ALTER TABLE [dbo].[Alergias] CHECK CONSTRAINT [FKAlergias422145]
GO
ALTER TABLE [dbo].[Alergias]  WITH CHECK ADD  CONSTRAINT [FKAlergias942253] FOREIGN KEY([Utilizadorid])
REFERENCES [dbo].[Utilizador] ([id])
GO
ALTER TABLE [dbo].[Alergias] CHECK CONSTRAINT [FKAlergias942253]
GO
ALTER TABLE [dbo].[Ingrediente]  WITH CHECK ADD  CONSTRAINT [FKIngredient26250] FOREIGN KEY([Tipoid])
REFERENCES [dbo].[Tipo] ([id])
GO
ALTER TABLE [dbo].[Ingrediente] CHECK CONSTRAINT [FKIngredient26250]
GO
ALTER TABLE [dbo].[Menu]  WITH CHECK ADD  CONSTRAINT [FKMenu752190] FOREIGN KEY([Utilizadorid])
REFERENCES [dbo].[Utilizador] ([id])
GO
ALTER TABLE [dbo].[Menu] CHECK CONSTRAINT [FKMenu752190]
GO
ALTER TABLE [dbo].[Menu_Receita]  WITH CHECK ADD  CONSTRAINT [FKMenu_Recei124436] FOREIGN KEY([Receitaid])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Menu_Receita] CHECK CONSTRAINT [FKMenu_Recei124436]
GO
ALTER TABLE [dbo].[Menu_Receita]  WITH CHECK ADD  CONSTRAINT [FKMenu_Recei706874] FOREIGN KEY([Menuid])
REFERENCES [dbo].[Menu] ([id])
GO
ALTER TABLE [dbo].[Menu_Receita] CHECK CONSTRAINT [FKMenu_Recei706874]
GO
ALTER TABLE [dbo].[Passo]  WITH CHECK ADD  CONSTRAINT [FKPasso258598] FOREIGN KEY([Receitaid])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Passo] CHECK CONSTRAINT [FKPasso258598]
GO
ALTER TABLE [dbo].[Receita]  WITH CHECK ADD  CONSTRAINT [FKReceita193] FOREIGN KEY([Categoriaid])
REFERENCES [dbo].[Categoria] ([id])
GO
ALTER TABLE [dbo].[Receita] CHECK CONSTRAINT [FKReceita193]
GO
ALTER TABLE [dbo].[Receita_Passo_Ingrediente]  WITH CHECK ADD  CONSTRAINT [FKReceita_Pa104487] FOREIGN KEY([Ingredienteid])
REFERENCES [dbo].[Ingrediente] ([id])
GO
ALTER TABLE [dbo].[Receita_Passo_Ingrediente] CHECK CONSTRAINT [FKReceita_Pa104487]
GO
ALTER TABLE [dbo].[Receita_Passo_Ingrediente]  WITH CHECK ADD  CONSTRAINT [FKReceita_Pa77458] FOREIGN KEY([PassoNumero], [PassoReceitaid])
REFERENCES [dbo].[Passo] ([Numero], [Receitaid])
GO
ALTER TABLE [dbo].[Receita_Passo_Ingrediente] CHECK CONSTRAINT [FKReceita_Pa77458]
GO
ALTER TABLE [dbo].[Receita_Receita]  WITH CHECK ADD  CONSTRAINT [FKReceita_Re167674] FOREIGN KEY([Receitaid2])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Receita_Receita] CHECK CONSTRAINT [FKReceita_Re167674]
GO
ALTER TABLE [dbo].[Receita_Receita]  WITH CHECK ADD  CONSTRAINT [FKReceita_Re172240] FOREIGN KEY([Receitaid])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Receita_Receita] CHECK CONSTRAINT [FKReceita_Re172240]
GO
ALTER TABLE [dbo].[Receita_Utensilio]  WITH CHECK ADD  CONSTRAINT [FKReceita_Ut281182] FOREIGN KEY([Utensilioid])
REFERENCES [dbo].[Utensilio] ([id])
GO
ALTER TABLE [dbo].[Receita_Utensilio] CHECK CONSTRAINT [FKReceita_Ut281182]
GO
ALTER TABLE [dbo].[Receita_Utensilio]  WITH CHECK ADD  CONSTRAINT [FKReceita_Ut813862] FOREIGN KEY([Receitaid])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Receita_Utensilio] CHECK CONSTRAINT [FKReceita_Ut813862]
GO
ALTER TABLE [dbo].[Receitas_Favoritas]  WITH CHECK ADD  CONSTRAINT [FKReceitas_F353053] FOREIGN KEY([Receitaid])
REFERENCES [dbo].[Receita] ([id])
GO
ALTER TABLE [dbo].[Receitas_Favoritas] CHECK CONSTRAINT [FKReceitas_F353053]
GO
ALTER TABLE [dbo].[Receitas_Favoritas]  WITH CHECK ADD  CONSTRAINT [FKReceitas_F368283] FOREIGN KEY([Utilizadorid])
REFERENCES [dbo].[Utilizador] ([id])
GO
ALTER TABLE [dbo].[Receitas_Favoritas] CHECK CONSTRAINT [FKReceitas_F368283]
GO
ALTER TABLE [dbo].[Utilizador]  WITH CHECK ADD  CONSTRAINT [FKUtilizador38477] FOREIGN KEY([Regime_Alimentarid])
REFERENCES [dbo].[Regime_Alimentar] ([id])
GO
ALTER TABLE [dbo].[Utilizador] CHECK CONSTRAINT [FKUtilizador38477]
GO
ALTER TABLE [dbo].[Utilizador_Ingrediente]  WITH CHECK ADD  CONSTRAINT [FKUtilizador123697] FOREIGN KEY([Utilizadorid])
REFERENCES [dbo].[Utilizador] ([id])
GO
ALTER TABLE [dbo].[Utilizador_Ingrediente] CHECK CONSTRAINT [FKUtilizador123697]
GO
ALTER TABLE [dbo].[Utilizador_Ingrediente]  WITH CHECK ADD  CONSTRAINT [FKUtilizador548353] FOREIGN KEY([Ingredienteid])
REFERENCES [dbo].[Ingrediente] ([id])
GO
ALTER TABLE [dbo].[Utilizador_Ingrediente] CHECK CONSTRAINT [FKUtilizador548353]
GO
ALTER TABLE [dbo].[Utilizador_Passo_Receita]  WITH CHECK ADD  CONSTRAINT [FKUtilizador258619] FOREIGN KEY([PassoNumero], [PassoReceitaid])
REFERENCES [dbo].[Passo] ([Numero], [Receitaid])
GO
ALTER TABLE [dbo].[Utilizador_Passo_Receita] CHECK CONSTRAINT [FKUtilizador258619]
GO
ALTER TABLE [dbo].[Utilizador_Passo_Receita]  WITH CHECK ADD  CONSTRAINT [FKUtilizador858975] FOREIGN KEY([Utilizadorid])
REFERENCES [dbo].[Utilizador] ([id])
GO
ALTER TABLE [dbo].[Utilizador_Passo_Receita] CHECK CONSTRAINT [FKUtilizador858975]
GO
USE [master]
GO
ALTER DATABASE [LI4DB] SET  READ_WRITE 
GO
