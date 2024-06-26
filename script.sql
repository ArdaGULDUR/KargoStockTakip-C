USE [master]
GO
/****** Object:  Database [KargoStokTakip]    Script Date: 4.06.2024 05:55:29 ******/
CREATE DATABASE [KargoStokTakip]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KargoStokTakip', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\KargoStokTakip.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KargoStokTakip_log', FILENAME = N'D:\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\KargoStokTakip_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [KargoStokTakip] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KargoStokTakip].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KargoStokTakip] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KargoStokTakip] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KargoStokTakip] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KargoStokTakip] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KargoStokTakip] SET ARITHABORT OFF 
GO
ALTER DATABASE [KargoStokTakip] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KargoStokTakip] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KargoStokTakip] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KargoStokTakip] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KargoStokTakip] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KargoStokTakip] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KargoStokTakip] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KargoStokTakip] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KargoStokTakip] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KargoStokTakip] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KargoStokTakip] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KargoStokTakip] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KargoStokTakip] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KargoStokTakip] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KargoStokTakip] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KargoStokTakip] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KargoStokTakip] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KargoStokTakip] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KargoStokTakip] SET  MULTI_USER 
GO
ALTER DATABASE [KargoStokTakip] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KargoStokTakip] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KargoStokTakip] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KargoStokTakip] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KargoStokTakip] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KargoStokTakip] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [KargoStokTakip] SET QUERY_STORE = ON
GO
ALTER DATABASE [KargoStokTakip] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [KargoStokTakip]
GO
/****** Object:  Table [dbo].[AlıcıBilgileri]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AlıcıBilgileri](
	[telNo] [numeric](11, 0) NOT NULL,
	[isim] [nvarchar](50) NOT NULL,
	[soyad] [nvarchar](50) NOT NULL,
	[ürünNo] [int] NOT NULL,
	[teslimatAdresID] [int] NOT NULL,
 CONSTRAINT [PK_AlıcıBilgileri] PRIMARY KEY CLUSTERED 
(
	[telNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AraçBilgileri]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AraçBilgileri](
	[plaka] [nvarchar](50) NOT NULL,
	[şubeNo] [int] NOT NULL,
	[mevcutDurum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AraçBilgileri] PRIMARY KEY CLUSTERED 
(
	[plaka] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Çalışanlar]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Çalışanlar](
	[id] [int] NOT NULL,
	[isim] [nvarchar](50) NOT NULL,
	[soyisim] [nvarchar](50) NOT NULL,
	[ikametkahAdresi] [nvarchar](50) NOT NULL,
	[pozisyon] [nvarchar](50) NOT NULL,
	[şubeNo] [int] NOT NULL,
	[maaş] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EskiÇalışanlar]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EskiÇalışanlar](
	[id] [int] NOT NULL,
	[isim] [nvarchar](50) NOT NULL,
	[soyisim] [nvarchar](50) NOT NULL,
	[ikametkahAdresi] [nvarchar](50) NOT NULL,
	[pozisyon] [nvarchar](50) NOT NULL,
	[şubeNo] [nvarchar](50) NOT NULL,
	[maaş] [money] NOT NULL,
 CONSTRAINT [PK_EskiÇalışanlar] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparişDurum]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparişDurum](
	[mevcutDurum] [nvarchar](50) NOT NULL,
	[şubeNo] [int] NOT NULL,
	[araçNo] [int] NOT NULL,
	[ürünNo] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SistemKullanıcıları]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SistemKullanıcıları](
	[id] [int] NOT NULL,
	[şifre] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Şube]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Şube](
	[şubeNo] [int] NOT NULL,
	[müdürID] [int] NOT NULL,
	[şubeAdres] [nvarchar](50) NOT NULL,
	[çalışanSayısı] [int] NOT NULL,
 CONSTRAINT [PK_Şube] PRIMARY KEY CLUSTERED 
(
	[şubeNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeslimatAdresi]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeslimatAdresi](
	[id] [int] NOT NULL,
	[ülke] [nvarchar](50) NOT NULL,
	[il] [nvarchar](50) NOT NULL,
	[ilçe] [nvarchar](50) NOT NULL,
	[mahalle] [nvarchar](50) NOT NULL,
	[binaNo] [int] NOT NULL,
	[daireNo] [int] NOT NULL,
 CONSTRAINT [PK_TeslimatAdresi] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TeslimEdilenÜrünler]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TeslimEdilenÜrünler](
	[ürünNo] [int] NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[ürünAd] [nvarchar](50) NOT NULL,
	[ürünFiyat] [money] NOT NULL,
	[MevcutDurum] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ÜrünBilgileri]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ÜrünBilgileri](
	[ürünNo] [int] IDENTITY(1,1) NOT NULL,
	[kategori] [nvarchar](50) NOT NULL,
	[ürünAd] [nvarchar](50) NOT NULL,
	[ürünFiyat] [money] NOT NULL,
	[mevcutDurum] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ÜrünBilgileri] PRIMARY KEY CLUSTERED 
(
	[ürünNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SiparişDurum]  WITH CHECK ADD  CONSTRAINT [FK_SiparişDurum_ÜrünBilgileri] FOREIGN KEY([ürünNo])
REFERENCES [dbo].[ÜrünBilgileri] ([ürünNo])
GO
ALTER TABLE [dbo].[SiparişDurum] CHECK CONSTRAINT [FK_SiparişDurum_ÜrünBilgileri]
GO
ALTER TABLE [dbo].[TeslimEdilenÜrünler]  WITH CHECK ADD  CONSTRAINT [FK_TeslimEdilenÜrünler_ÜrünBilgileri] FOREIGN KEY([ürünNo])
REFERENCES [dbo].[ÜrünBilgileri] ([ürünNo])
GO
ALTER TABLE [dbo].[TeslimEdilenÜrünler] CHECK CONSTRAINT [FK_TeslimEdilenÜrünler_ÜrünBilgileri]
GO
/****** Object:  StoredProcedure [dbo].[spÇalışanGüncelle]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spÇalışanGüncelle]
@id INT,
@isim NVARCHAR(50),
@soyisim NVARCHAR(50),
@ikametkahAdresi NVARCHAR(50),
@pozisyon NVARCHAR(50),
@şubeNo INT,
@maaş MONEY

AS
BEGIN
		UPDATE Çalışanlar
		SET isim = @isim, soyisim = @soyisim, ikametkahAdresi = @ikametkahAdresi, pozisyon = @pozisyon, şubeNo = @şubeNo, maaş = @maaş
		WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[spÇalışanListele]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spÇalışanListele]
AS
BEGIN
	SELECT id, isim, soyisim, ikametkahAdresi, pozisyon, şubeNo, maaş
	FROM Çalışanlar
END
GO
/****** Object:  StoredProcedure [dbo].[spÇalışanSil]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spÇalışanSil]
@id INT
AS
BEGIN
	DELETE FROM Çalışanlar
	WHERE id = @id
END
GO
/****** Object:  StoredProcedure [dbo].[spKullanıcıGirişKontrol]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spKullanıcıGirişKontrol]
@id INT,
@şifre NVARCHAR(50),
@pozisyon NVARCHAR(50)
AS
BEGIN
	DECLARE @kullanıcıVarMı INT

	IF EXISTS  (SELECT 1 FROM SistemKullanıcıları 
				WHERE şifre = @şifre AND id = (SELECT id 
											   FROM Çalışanlar
											   WHERE id = @id AND pozisyon = 'Müdür'))
	BEGIN
		SET @kullanıcıVarMı = 1
	END

	ELSE IF EXISTS (SELECT 1 FROM SistemKullanıcıları 
				WHERE şifre = @şifre AND id = (SELECT id 
											   FROM Çalışanlar
											   WHERE id = @id AND pozisyon = 'Sistem Kullanıcısı'))
	BEGIN
		SET @kullanıcıVarMı = 2
	END

	ELSE
	BEGIN
		SET @kullanıcıVarMı = 0
	END

	SELECT @kullanıcıVarMı AS KullanıcıVarMı
END
GO
/****** Object:  StoredProcedure [dbo].[spÜrünGüncelle]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spÜrünGüncelle]
@ürünId INT,
@kategori NVARCHAR(50),
@ürünAd NVARCHAR(50),
@ürünFiyat MONEY,
@mevcutDurum NVARCHAR(50)
AS
BEGIN
	UPDATE ÜrünBilgileri
	SET kategori = @kategori, ürünAd = @ürünAd, ürünFiyat = @ürünFiyat, mevcutDurum = @mevcutDurum
	WHERE ürünNo = @ürünId
END
GO
/****** Object:  StoredProcedure [dbo].[spÜrünListele]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spÜrünListele]
AS
BEGIN
	SELECT ürünNo, kategori, ürünAd, ürünFiyat, mevcutDurum 
	FROM ÜrünBilgileri
END
GO
/****** Object:  StoredProcedure [dbo].[spÜrünSil]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spÜrünSil]
@ürünId INT
AS
BEGIN
	DELETE FROM ÜrünBilgileri
	WHERE ürünNo = @ürünId
END
GO
/****** Object:  StoredProcedure [dbo].[spYeniÇalışanEkle]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spYeniÇalışanEkle]
	@çalışanId INT,
	@isim NVARCHAR(50),
	@soyisim NVARCHAR(50),
	@ikametkahAdresi NVARCHAR(50),
	@pozisyon NVARCHAR(50),
	@şubeNo INT,
	@maaş MONEY
AS
BEGIN
	INSERT INTO Çalışanlar(id,isim,soyisim,ikametkahAdresi,pozisyon,şubeNo,maaş)
	VALUES (@çalışanId, @isim, @soyisim, @ikametkahAdresi, @pozisyon, @şubeNo, @maaş)
END
GO
/****** Object:  StoredProcedure [dbo].[spYeniÜrünEkle]    Script Date: 4.06.2024 05:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[spYeniÜrünEkle]
@kategori NVARCHAR(50),
@ürünAd NVARCHAR(50),
@ürünFiyat INT,
@mevcutDurum NVARCHAR(50)

AS
BEGIN
	INSERT INTO ÜrünBilgileri(kategori, ürünAd, ürünFiyat, MevcutDurum)
	VALUES(@kategori,@ürünAd,1234,@ürünFiyat);
END
GO
USE [master]
GO
ALTER DATABASE [KargoStokTakip] SET  READ_WRITE 
GO
