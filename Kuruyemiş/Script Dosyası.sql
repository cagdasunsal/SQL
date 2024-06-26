USE [master]
GO
/****** Object:  Database [Kuruyemiş]    Script Date: 29.12.2023 16:23:24 ******/
CREATE DATABASE [Kuruyemiş]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Kuruyemiş', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kuruyemiş.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Kuruyemiş_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Kuruyemiş_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Kuruyemiş] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Kuruyemiş].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Kuruyemiş] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Kuruyemiş] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Kuruyemiş] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Kuruyemiş] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Kuruyemiş] SET ARITHABORT OFF 
GO
ALTER DATABASE [Kuruyemiş] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Kuruyemiş] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Kuruyemiş] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Kuruyemiş] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Kuruyemiş] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Kuruyemiş] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Kuruyemiş] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Kuruyemiş] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Kuruyemiş] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Kuruyemiş] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Kuruyemiş] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Kuruyemiş] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Kuruyemiş] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Kuruyemiş] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Kuruyemiş] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Kuruyemiş] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Kuruyemiş] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Kuruyemiş] SET RECOVERY FULL 
GO
ALTER DATABASE [Kuruyemiş] SET  MULTI_USER 
GO
ALTER DATABASE [Kuruyemiş] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Kuruyemiş] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Kuruyemiş] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Kuruyemiş] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Kuruyemiş] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Kuruyemiş] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Kuruyemiş', N'ON'
GO
ALTER DATABASE [Kuruyemiş] SET QUERY_STORE = ON
GO
ALTER DATABASE [Kuruyemiş] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Kuruyemiş]
GO
/****** Object:  Table [dbo].[Adres_Bilgileri]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adres_Bilgileri](
	[Adres_no] [int] IDENTITY(1,1) NOT NULL,
	[M_ID] [int] NULL,
	[Telefon] [varchar](10) NOT NULL,
	[Ulke] [varchar](50) NOT NULL,
	[Sehir] [varchar](50) NOT NULL,
	[Ilce] [varchar](50) NOT NULL,
	[PostaKodu] [varchar](10) NOT NULL,
	[Acik_Adres] [varchar](500) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Adres_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KampanyaVeIndirimler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KampanyaVeIndirimler](
	[Kampanya_ID] [int] NOT NULL,
	[Sube_ID] [int] NULL,
	[Kampanya_Adi] [varchar](40) NULL,
	[Kampanya_Baslama_Tarihi] [datetime] NULL,
	[Kampanya_Bitis_Tarihi] [datetime] NULL,
	[Indirim_Orani] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Kampanya_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kargo]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kargo](
	[Kargo_Kodu] [int] NOT NULL,
	[Siparis_Kodu] [int] NULL,
	[Kargoya_Verilme_Tarihi] [datetime] NULL,
	[Kargo_Teslim_Tarihi] [datetime] NULL,
	[Durum] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Kargo_Kodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[Kategori_ID] [int] NOT NULL,
	[Kategori_Adi] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[Kategori_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteri_Bilgileri]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteri_Bilgileri](
	[Musteri_ID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [varchar](15) NOT NULL,
	[Soyad] [varchar](15) NOT NULL,
	[KullaniciAdi] [varchar](30) NOT NULL,
	[Sifre] [varchar](15) NOT NULL,
	[Email] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Musteri_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odemeler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odemeler](
	[Odeme_ID] [int] NOT NULL,
	[Siparis_ID] [int] NULL,
	[Odeme_Tarihi] [datetime] NULL,
	[Odeme_Turu] [varchar](20) NULL,
	[Odeme_Tutari] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Odeme_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel_Bilgileri]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel_Bilgileri](
	[Personel_ID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [varchar](30) NOT NULL,
	[Sifre] [varchar](15) NOT NULL,
	[Email] [varchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Personel_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[P_ID] [int] NOT NULL,
	[Sube_ID] [int] NULL,
	[Ad] [varchar](20) NULL,
	[Soyad] [varchar](20) NULL,
	[Telefon] [varchar](15) NULL,
	[Ise_Baslama_Tarihi] [date] NULL,
	[Pozisyon] [varchar](20) NULL,
	[Maas] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[P_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetaylari]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetaylari](
	[Siparis_ID] [int] NULL,
	[Urun_Kodu] [int] NULL,
	[Birim_Fiyati] [float] NULL,
	[MiktarKG] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[Siparis_ID] [int] NOT NULL,
	[M_ID] [int] NULL,
	[Siparis_Tarihi] [date] NULL,
	[Toplam_Tutar] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Siparis_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stoklar]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stoklar](
	[Islem_Kodu] [int] NOT NULL,
	[Urun_Kodu] [int] NULL,
	[Sube_ID] [int] NULL,
	[Miktar] [float] NULL,
	[Tarih] [datetime] NULL,
	[Islem_Turu] [varchar](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[Islem_Kodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subeler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subeler](
	[Sube_ID] [int] NOT NULL,
	[Tedarikci_ID] [int] NULL,
	[Sube_Adi] [varchar](30) NULL,
	[Sehir] [varchar](30) NULL,
	[Ilce] [varchar](30) NULL,
	[Semt] [varchar](30) NULL,
	[Acik_Adres] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Sube_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tedarikciler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tedarikciler](
	[Tedarikci_ID] [int] NOT NULL,
	[Tedarikci_Adi] [varchar](20) NULL,
	[Tedarikci_Adres] [varchar](500) NULL,
	[Telefon] [varchar](15) NULL,
	[Telefon2] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[Tedarikci_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 29.12.2023 16:23:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[Urun_Kodu] [int] NOT NULL,
	[Tedarikci_kodu] [int] NULL,
	[Kategori_ID] [int] NULL,
	[Urun_Adi] [varchar](40) NULL,
	[Fiyat] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Urun_Kodu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Adres_Bilgileri]  WITH CHECK ADD  CONSTRAINT [fk_Adres_Bilgileri] FOREIGN KEY([M_ID])
REFERENCES [dbo].[Musteri_Bilgileri] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Adres_Bilgileri] CHECK CONSTRAINT [fk_Adres_Bilgileri]
GO
ALTER TABLE [dbo].[KampanyaVeIndirimler]  WITH CHECK ADD  CONSTRAINT [fk_KampanyaVeIndirimler] FOREIGN KEY([Sube_ID])
REFERENCES [dbo].[Subeler] ([Sube_ID])
GO
ALTER TABLE [dbo].[KampanyaVeIndirimler] CHECK CONSTRAINT [fk_KampanyaVeIndirimler]
GO
ALTER TABLE [dbo].[Kargo]  WITH CHECK ADD  CONSTRAINT [fk_Kargo] FOREIGN KEY([Siparis_Kodu])
REFERENCES [dbo].[Siparisler] ([Siparis_ID])
GO
ALTER TABLE [dbo].[Kargo] CHECK CONSTRAINT [fk_Kargo]
GO
ALTER TABLE [dbo].[Odemeler]  WITH CHECK ADD  CONSTRAINT [fk_Odemeler] FOREIGN KEY([Siparis_ID])
REFERENCES [dbo].[Siparisler] ([Siparis_ID])
GO
ALTER TABLE [dbo].[Odemeler] CHECK CONSTRAINT [fk_Odemeler]
GO
ALTER TABLE [dbo].[Personel_Bilgileri]  WITH CHECK ADD  CONSTRAINT [fk_Personel_Bilgileri] FOREIGN KEY([Personel_ID])
REFERENCES [dbo].[Personeller] ([P_ID])
GO
ALTER TABLE [dbo].[Personel_Bilgileri] CHECK CONSTRAINT [fk_Personel_Bilgileri]
GO
ALTER TABLE [dbo].[Personeller]  WITH CHECK ADD  CONSTRAINT [fk_Personeler] FOREIGN KEY([Sube_ID])
REFERENCES [dbo].[Subeler] ([Sube_ID])
GO
ALTER TABLE [dbo].[Personeller] CHECK CONSTRAINT [fk_Personeler]
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [fk_SiparisD] FOREIGN KEY([Siparis_ID])
REFERENCES [dbo].[Siparisler] ([Siparis_ID])
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [fk_SiparisD]
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [fk_SiparisDd] FOREIGN KEY([Urun_Kodu])
REFERENCES [dbo].[Urunler] ([Urun_Kodu])
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [fk_SiparisDd]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [fk_Siparisler] FOREIGN KEY([M_ID])
REFERENCES [dbo].[Musteri_Bilgileri] ([Musteri_ID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [fk_Siparisler]
GO
ALTER TABLE [dbo].[Stoklar]  WITH CHECK ADD  CONSTRAINT [fk_Stoklar] FOREIGN KEY([Urun_Kodu])
REFERENCES [dbo].[Urunler] ([Urun_Kodu])
GO
ALTER TABLE [dbo].[Stoklar] CHECK CONSTRAINT [fk_Stoklar]
GO
ALTER TABLE [dbo].[Stoklar]  WITH CHECK ADD  CONSTRAINT [fk_Stoklarr] FOREIGN KEY([Sube_ID])
REFERENCES [dbo].[Subeler] ([Sube_ID])
GO
ALTER TABLE [dbo].[Stoklar] CHECK CONSTRAINT [fk_Stoklarr]
GO
ALTER TABLE [dbo].[Subeler]  WITH CHECK ADD  CONSTRAINT [fk_Subeler] FOREIGN KEY([Tedarikci_ID])
REFERENCES [dbo].[Tedarikciler] ([Tedarikci_ID])
GO
ALTER TABLE [dbo].[Subeler] CHECK CONSTRAINT [fk_Subeler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [fk_Urunler] FOREIGN KEY([Tedarikci_kodu])
REFERENCES [dbo].[Tedarikciler] ([Tedarikci_ID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [fk_Urunler]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [fk_Urunlerr] FOREIGN KEY([Kategori_ID])
REFERENCES [dbo].[Kategoriler] ([Kategori_ID])
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [fk_Urunlerr]
GO
USE [master]
GO
ALTER DATABASE [Kuruyemiş] SET  READ_WRITE 
GO
