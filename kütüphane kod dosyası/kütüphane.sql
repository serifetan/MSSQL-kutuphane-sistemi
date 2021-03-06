USE [Kutuphane_Yonetim_Sistemi]
GO
/****** Object:  Table [dbo].[Kampanya_bilgi]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanya_bilgi](
	[mid] [int] NULL,
	[kno] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kampanyalar]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kampanyalar](
	[kno] [int] NOT NULL,
	[ad] [varchar](30) NOT NULL,
	[bilgi] [varchar](100) NOT NULL,
	[bastarih] [date] NULL,
	[bittarih] [date] NULL,
 CONSTRAINT [PK_Kampanyalar] PRIMARY KEY CLUSTERED 
(
	[kno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori_bilgi]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori_bilgi](
	[ISBN] [varchar](17) NULL,
	[kid] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategoriler]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategoriler](
	[kid] [int] NOT NULL,
	[ad] [varchar](30) NOT NULL,
	[bilgi] [varchar](100) NULL,
 CONSTRAINT [PK_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[kid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplar]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplar](
	[ISBN] [varchar](17) NOT NULL,
	[ad] [varchar](30) NOT NULL,
	[yazar] [varchar](30) NULL,
	[yayınevi] [varchar](30) NULL,
	[ytarihi] [date] NULL,
	[aciklama] [varchar](200) NULL,
	[fiyat] [float] NULL,
	[yid] [int] NULL,
	[yno] [int] NULL,
	[sid] [int] NULL,
 CONSTRAINT [PK_Kitaplar] PRIMARY KEY CLUSTERED 
(
	[ISBN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[mid] [int] NOT NULL,
	[ad] [varchar](30) NOT NULL,
	[soyad] [varchar](30) NOT NULL,
	[sehir] [varchar](30) NULL,
	[ilce] [varchar](30) NULL,
	[mahalle] [varchar](30) NULL,
	[pkodu] [int] NULL,
 CONSTRAINT [PK_Musteriler] PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odunc_bilgi]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odunc_bilgi](
	[uid] [int] NULL,
	[ISBN] [varchar](17) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparis_bilgi]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparis_bilgi](
	[spid] [int] NOT NULL,
	[tarih] [date] NULL,
	[iletimtarih] [date] NULL,
	[id] [int] NULL,
	[takipno] [int] NULL,
	[ISBN] [varchar](17) NULL,
 CONSTRAINT [Pk_Siparis_bilgi] PRIMARY KEY CLUSTERED 
(
	[spid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stok]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stok](
	[sid] [int] NOT NULL,
	[adet] [int] NULL,
 CONSTRAINT [Pk_Stok] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Uyeler]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Uyeler](
	[uid] [int] NOT NULL,
	[uyead] [varchar](30) NOT NULL,
	[uyesoyad] [varchar](30) NOT NULL,
	[eposta] [varchar](30) NULL,
	[telefon] [varchar](30) NULL,
	[cinsiyet] [varchar](30) NULL,
 CONSTRAINT [PK_Uyeler] PRIMARY KEY CLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yayinevleri]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yayinevleri](
	[yno] [int] NOT NULL,
	[ad] [varchar](30) NOT NULL,
	[adres] [varchar](100) NULL,
	[website] [varchar](30) NULL,
	[tel] [varchar](30) NULL,
 CONSTRAINT [Pk_Yayinevleri] PRIMARY KEY CLUSTERED 
(
	[yno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Yazarlar]    Script Date: 21.01.2022 01:27:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Yazarlar](
	[yid] [int] NOT NULL,
	[ad] [varchar](100) NOT NULL,
	[soyad] [varchar](100) NULL,
	[website] [varchar](30) NULL,
 CONSTRAINT [Pk_Yazarlar] PRIMARY KEY CLUSTERED 
(
	[yid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (1, 1)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (2, 2)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (2, 3)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (3, 4)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (4, 5)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (5, 6)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (6, 9)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (7, 7)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (6, 5)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (9, 5)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (11, 1)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (12, 6)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (13, 4)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (14, 3)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (15, 5)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (16, 7)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (17, 1)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (18, 4)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (19, 6)
INSERT [dbo].[Kampanya_bilgi] ([mid], [kno]) VALUES (20, 2)
GO
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (1, N'İndirim', N'%20', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-17' AS Date))
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (2, N'Üç Al Bir Öde', N'100 TL Üzeri Alışverişlerde Geçerlidir.', CAST(N'2022-01-01' AS Date), NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (3, N'Kitap hediyesi', N'75 tl ve üzeri alışverişe dilediğin  kitap hediye.', NULL, NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (4, N'Hediye çeki', N'150 tl ve üzeri alışverişe 25 tl  hediye çeki.', NULL, NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (5, N'İndirim', N'İki kitap alana ikincisi %50 indirimli.', NULL, NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (6, N'İndirim', N'İlk alışverişte %40 a varan indirim.', NULL, NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (7, N'İndirim', N'Aynı yazardan aldığın 2.kitap %50 indrimli.', NULL, NULL)
INSERT [dbo].[Kampanyalar] ([kno], [ad], [bilgi], [bastarih], [bittarih]) VALUES (9, N'Hediye ', N'Aynı yayınevinden aldığın 3 kitaptan 1 tanesi hediye.', CAST(N'2022-01-12' AS Date), CAST(N'2022-01-19' AS Date))
GO
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'222-2-163306-02-1', 1)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'850-2-17565-43-8', 2)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17765-43-9', 3)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'850-2-88815-64-0', 19)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'850-2-17515-04-0', 4)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17745-43-9', 5)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17765-43-8', 6)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'720-2-17715-93-9', 6)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17565-43-8', 6)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17565-43-8', 7)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'850-2-17565-43-8', 8)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17745-43-9', 9)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17715-93-9', 10)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17765-43-0', 11)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17745-93-9', 12)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17765-43-8', 13)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'750-2-17715-93-9', 14)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'850-2-17515-04-8', 15)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'720-2-17517-93-9', 16)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'119-2-10517-93-9', 17)
INSERT [dbo].[Kategori_bilgi] ([ISBN], [kid]) VALUES (N'019-2-102017-93-9', 12)
GO
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (1, N'Roman', N'Polisiye Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (2, N'Roman', N'Bilim Romanı ')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (3, N'Roman', N' Öğrenim Kitapları')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (4, N'Roman', N' Tarihi Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (5, N'Roman', N' Macera Romanı')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (6, N'Roman', N' Sosyal Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (7, N'Roman', N'Tahlil Romanı')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (8, N'Roman', N'Bilimkurgu Romanı')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (9, N'Roman', N'Realist Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (10, N'Roman', N'Romantik Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (11, N'Roman', N'Natüralist Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (12, N'Roman', N'Postmodern Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (13, N'Roman', N'Konu Roman')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (14, N'Roman', N'Korku')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (15, N'Roman', N'Sürrealist')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (16, N'Roman', N'Psikolojik')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (17, N'Roman', N'Şiir kitapları')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (18, N'Şiir', N'Lirik şiir')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (19, N'Şiir', N'Epik şiir')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (20, N'Şiir', N'Pastoral Şiir.')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (21, N'Şiir', N'Didaktik Şiir.')
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (22, N'Biyografi', NULL)
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (23, N' Gezi', NULL)
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (24, N'Edebiyat kitabı', NULL)
INSERT [dbo].[Kategoriler] ([kid], [ad], [bilgi]) VALUES (25, N'Araştırma kitabı', NULL)
GO
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'000-2-88815-64-0', N'İlahi Komedya', N'Dante Alighieri', N'YEDİTEPE YAYINEVİ', CAST(N'1427-01-01' AS Date), N'aciklama yok', 85, 148, 18, 153)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'009-2-10517-93-0', N'Son Kamelya', N'Sarah Jio', N'Ceviz Yayıncılık', CAST(N'2016-01-01' AS Date), N'aciklama yok', 23.9, 123, 13, 147)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'009-2-17517-93-0', N'Cimri', N'Molière', N'Ceviz Yayıncılık', CAST(N'1765-01-01' AS Date), N'aciklama yok', 42.9, 122, 13, 1)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-102017-93-0', N'Kuşlar Yasına Gider', N'Hasan Ali Toptaş', N'Ceylan Yayıncılık', CAST(N'2017-01-01' AS Date), N'aciklama yok', 55.99, 118, 12, 2)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-102017-93-9', N'Ateşi Yakalamak', N'Suzanne Collins', N'Ceylan Yayıncılık', CAST(N'2009-01-01' AS Date), N'aciklama yok', 38.25, 117, 12, 3)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-102417-93-9', N'Taaşşuk-ı Talat ve Fitnat', N'Şemseddin Sami', N'Ceylan Yayıncılık', CAST(N'1963-01-01' AS Date), N'aciklama yok', 45.9, 116, 12, 4)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-102417-94-9', N'Ölü Ozanlar Derneği', N'N. H. Kleinbaum', N'Ceylan Yayıncılık', CAST(N'2002-01-01' AS Date), N'aciklama yok', 67.99, 115, 12, 5)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-102517-93-0', N'İskender', N'Elif Şafak', N'Ceviz Yayıncılık', CAST(N'2015-01-01' AS Date), N'aciklama yok', 69.9, 119, 13, 6)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-10517-93-0', N'İrade Terbiyesi', N'Jules Payot', N'Ceviz Yayıncılık', CAST(N'1991-01-01' AS Date), N'aciklama yok', 120, 120, 13, 7)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-10517-93-9', N'Sevdalinka', N'Ayşe Kulin', N'Ceviz Yayıncılık', CAST(N'2010-01-01' AS Date), N'aciklama yok', 27.9, 124, 13, 8)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-111739-94-9', N'Da Vinci Şifresi', N'Robert Langdon Serisi 2', N'Ceylan Yayıncılık', CAST(N'1996-01-01' AS Date), N'aciklama yok', 60, 110, 12, 9)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-112617-94-9', N'Nar Ağacı', N'Nazan Bekiroğlu', N'Ceylan Yayıncılık', CAST(N'2008-01-01' AS Date), N'aciklama yok', 20, 114, 12, 10)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-112637-94-9', N'Kendine Ait Bir Oda', N'Virginia Woolf', N'Ceylan Yayıncılık', CAST(N'1998-01-01' AS Date), N'aciklama yok', 22.99, 113, 12, 11)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-112639-94-9', N'Hasretinden Prangalar Eskittim', N'Ahmed Arif', N'Ceylan Yayıncılık', CAST(N'2007-01-01' AS Date), N'aciklama yok', 33.95, 112, 12, 12)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'019-2-112739-94-9', N'Yüreğim Seni Çok Sevdi', N'Canan TAN', N'Ceylan Yayıncılık', CAST(N'2009-01-01' AS Date), N'aciklama yok', 27.5, 111, 12, 13)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'059-2-111739-94-9', N'Denemeler', N'Montaigne', N'Charlesbridge', CAST(N'1996-01-01' AS Date), N'aciklama yok', 73.95, 109, 11, 14)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'100-2-09567-55-0', N'Yeni Hayat', N'Dante Alighieri', N'YEDİTEPE YAYINEVİ', CAST(N'1294-01-01' AS Date), N'aciklama yok', 26, 148, 18, 156)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'100-2-88815-55-0', N'Paradiso', N'Dante Alighieri', N'YEDİTEPE YAYINEVİ', CAST(N'1436-01-01' AS Date), N'aciklama yok', 115, 148, 18, 154)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'100-2-99997-11-0', N'Soledad', N'Angie Cruz', N'YEDİTEPE YAYINEVİ', CAST(N'2001-01-01' AS Date), N'aciklama yok', 35, 149, 18, 159)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'100-2-99997-55-0', N'Dominicana', N'Angie Cruz', N'YEDİTEPE YAYINEVİ', CAST(N'2020-01-01' AS Date), N'aciklama yok', 30, 149, 18, 158)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'103-7-121198-97-9', N'İt Cazı', N'Küçük İskender', N'Columbia University Press', CAST(N'2012-01-01' AS Date), N'aciklama yok', 41, 95, 10, 15)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'110-2-10517-93-9', N'Grapon Kâğıtları', N'Didem Madak', N'Çatı Kitapları', CAST(N'2018-01-01' AS Date), N'aciklama yok', 25.9, 126, 14, 16)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'110-2-12517-93-9', N'Goriot Baba', N'Honore de Balzac', N'Çatı Kitapları', CAST(N'2018-01-01' AS Date), N'aciklama yok', 25.9, 127, 14, 17)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'110-2-17517-93-9', N'Üstü Kalsın', N'Cemal Süreya', N'Çatı Kitapları', CAST(N'1992-01-01' AS Date), N'aciklama yok', 7.9, 128, 14, 18)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'113-7-121399-97-9', N'Dünya Lekesi', N'Seyyidhan Kömürcü', N'Columbia University Press', CAST(N'1978-01-01' AS Date), N'aciklama yok', 17.95, 96, 10, 19)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'116-0-102913-50-7', N'Açlık', N'Knut Hamsun', N'İnkılap YAYINEVİ', CAST(N'1998-01-01' AS Date), N'aciklama yok', 27.95, 47, 5, 20)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'118-7-121099-97-9', N'Sana Gül Bahçesi Vadetmedim', N'Joanne Greenberg,', N'Columbia University Press', CAST(N'1997-01-01' AS Date), N'aciklama yok', 23.99, 98, 10, 21)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'118-7-121199-97-9', N'Asal Sayıların Yalnızlığı', N'Paolo Giordano', N'Columbia University Press', CAST(N'1993-01-01' AS Date), N'aciklama yok', 25.95, 97, 10, 22)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'118-7-121299-97-9', N'Bizim Büyük Çaresizliğimiz', N'Barış Bıçakçı,', N'Columbia University Press', CAST(N'2001-01-01' AS Date), N'aciklama yok', 27.99, 99, 10, 23)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'119-2-10517-93-9', N'Kitap Hırsızı', N'Markus Zusak', N'Ceviz Yayıncılık', CAST(N'2014-01-01' AS Date), N'aciklama yok', 27.9, 125, 13, 24)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-100196-18-7', N'Göremediğimiz Tüm Işıklar', N'Anthony Doerr', N'Bilgin Kültür Sanat', CAST(N'1925-01-01' AS Date), N'aciklama yok', 26.25, 89, 9, 148)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-101196-18-7', N'Direnmenin Estetiği', N'Anthony Doerr', N'Bilgin Kültür Sanat', CAST(N'1925-01-01' AS Date), N'aciklama yok', 26.25, 89, 9, 149)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-101199-93-9', N'Kızıla Boyalı Saçlar', N'Kostas Mourselas', N'Columbia University Press', CAST(N'2008-01-01' AS Date), N'aciklama yok', 13.99, 92, 10, 26)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-101199-98-7', N'Her Saniye Değerlidir', N'Lance Armstrong', N'Columbia University Press', CAST(N'2012-01-01' AS Date), N'aciklama yok', 15.75, 91, 10, 27)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-121199-07-9', N'Akşam Güneşi', N'Reşat Nuri Güntekin', N'Columbia University Press', CAST(N'2004-01-01' AS Date), N'aciklama yok', 30, 94, 10, 28)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-121199-97-9', N'Kitaptan Kimse Çıkamayacak', N'Altay Öktem', N'Columbia University Press', CAST(N'2005-01-01' AS Date), N'aciklama yok', 19.99, 93, 10, 29)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-160196-18-7', N'Sevgi Neredeyse Tanrı Oradadır', N'Lev Nikolayeviç Tolstoy', N'Bilgin Kültür Sanat', CAST(N'1932-01-01' AS Date), N'aciklama yok', 19.5, 88, 9, 30)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-162196-18-7', N'Sana Gül Bahçesi Vadetmedim', N'Joanne Greenberg', N'Bilgin Kültür Sanat', CAST(N'1932-01-01' AS Date), N'aciklama yok', 19.5, 87, 9, 31)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-162196-38-7', N'Sefiller ', N'Victor Hugo', N'Bilgin Kültür Sanat', CAST(N'1893-01-01' AS Date), N'aciklama yok', 16.75, 86, 9, 32)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-164396-30-7', N'Ses ve Öfke', N'William Faulkner', N'Bilgin Kültür Sanat', CAST(N'1996-01-01' AS Date), N'aciklama yok', 19.75, 84, 9, 33)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-167896-38-7', N'Sergüzeşt  ', N'Samipaşazade Sezai', N'Bilgin Kültür Sanat', CAST(N'1896-01-01' AS Date), N'aciklama yok', 18.75, 85, 9, 34)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'123-7-301109-98-7', N'Annelerin Sessiz Çocukları', N'Ayşegül Kocabıçak', N'Bilgin Kültür Sanat', CAST(N'1957-01-01' AS Date), N'aciklama yok', 10.25, 90, 9, 35)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'125-4-12534-12-3', N'Dura Mater', N'Serkan Karaismailoğlu', N'ELMA YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 20, 151, 19, 162)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'125-4-55533-12-3', N'The Art of War', N'Sun Tzu', N'YEDİTEPE YAYINEVİ', CAST(N'0400-01-01' AS Date), N'aciklama yok', 24, 150, 18, 160)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'125-4-98534-12-3', N'Pia Mater', N'Serkan Karaismailoğlu', N'ELMA YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 12, 151, 19, 161)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-101806-56-7', N'Ölü Canlar ', N'Gogol', N'Berfin Yayınları', CAST(N'2019-01-01' AS Date), N'aciklama yok', 29.95, 76, 8, 36)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-101836-36-7', N'Gazoz Ağacı   ', N'Sabahattin Kudret Aksal', N'Berfin Yayınları', CAST(N'2016-01-01' AS Date), N'aciklama yok', 42.95, 78, 8, 37)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-101836-39-7', N'İki Şehrin Hikâyesi ', N'Charles Dickens', N'Berfin Yayınları', CAST(N'2016-01-01' AS Date), N'aciklama yok', 42.95, 79, 8, 38)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-101836-56-7', N'Onlar da İnsandı  ', N'Cengiz Dağcı', N'Berfin Yayınları', CAST(N'2016-01-01' AS Date), N'aciklama yok', 39.95, 77, 8, 39)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-164396-39-7', N'Kiralık Konak  ', N'Yakup Kadri Karaosmanoğlu', N'Bilgin Kültür Sanat', CAST(N'1997-01-01' AS Date), N'aciklama yok', 22.95, 82, 9, 40)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-165696-39-7', N'Mai ve Siyah  ', N'Halit Ziya Uşaklıgil', N'Berfin Yayınları', CAST(N'1997-01-01' AS Date), N'aciklama yok', 22.95, 81, 8, 41)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'127-7-165896-39-7', N'Küçük Ağa ', N'Tarık Buğra', N'Berfin Yayınları', CAST(N'1997-01-01' AS Date), N'aciklama yok', 37.95, 80, 8, 42)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-100003-52-0', N'Dokuzuncu Hariciye Koğuşu ', N'Peyami Safa', N'Anka Kadın Yayınları', CAST(N'1993-01-01' AS Date), N'aciklama yok', 22.23, 53, 6, 43)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-100003-52-7', N'Çalıkuşu ', N'Reşat Nuri Güntekin', N'Anka Kadın Yayınları', CAST(N'1999-01-01' AS Date), N'aciklama yok', 22.23, 52, 6, 44)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-100013-52-7', N'Bir Bilim Adamının Romanı ', N'Oğuz Atay', N'Anka Kadın Yayınları', CAST(N'2003-01-01' AS Date), N'aciklama yok', 47.95, 51, 6, 45)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-100913-52-7', N'Beyaz Gemi  ', N'Cengiz Aytmatov', N'İnkılap YAYINEVİ', CAST(N'1977-01-01' AS Date), N'aciklama yok', 52.25, 50, 5, 46)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-101003-52-7', N'Don Kişot  ', N'Cervantes', N'Anka Kadın Yayınları', CAST(N'1996-01-01' AS Date), N'aciklama yok', 21, 54, 6, 47)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-101203-52-7', N'Drina Köprüsü  ', N'İvo Andriç', N'Anka Kadın Yayınları', CAST(N'1996-01-01' AS Date), N'aciklama yok', 11.95, 55, 6, 48)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-101403-51-7', N'Drinada Son Gün  ', N'Faik Baysal', N'Anka Kadın Yayınları', CAST(N'2007-01-01' AS Date), N'aciklama yok', 10.25, 56, 6, 49)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-101413-72-7', N'Esir Şehrin İnsanları ', N'Kemal Tahir', N'Anka Kadın Yayınları', CAST(N'2017-01-01' AS Date), N'aciklama yok', 10.25, 57, 6, 150)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-102913-50-7', N'Ayaşlı ile Kiracıları ', N'Memduh Şevket Esendal', N'İnkılap YAYINEVİ', CAST(N'1973-01-01' AS Date), N'aciklama yok', 32.95, 48, 5, 50)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-0-102913-52-7', N'Beyaz Diş  ', N'Jack London', N'İnkılap YAYINEVİ', CAST(N'1968-01-01' AS Date), N'aciklama yok', 47.95, 49, 5, 51)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-1-101513-52-7', N'Eskici ve Oğulları  ', N'Orhan Kemal', N'Anka Kadın Yayınları', CAST(N'2018-01-01' AS Date), N'aciklama yok', 10.25, 58, 6, 52)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-1-101713-52-7', N'Fareler ve İnsanlar ', N'John Steinbeck', N'Anka Kadın Yayınları', CAST(N'2019-01-01' AS Date), N'aciklama yok', 10.25, 59, 6, 53)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-1-121763-52-7', N'Fatih-Harbiye  ', N'Peyami Safa', N'Anka Kadın Yayınları', CAST(N'1987-01-01' AS Date), N'aciklama yok', 10.25, 60, 6, 54)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-1-191761-50-0', N'Yılkı Atı ', N'Abbas Sayar', N'Batı Akademi', CAST(N'2004-01-01' AS Date), N'aciklama yok', 10.25, 62, 7, 55)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'156-7-131763-51-0', N'Yedinci Gün  ', N'Orhan Hançerlioğlu', N'Batı Akademi', CAST(N'2002-01-01' AS Date), N'aciklama yok', 10.25, 63, 7, 56)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'158-0-101799-94-9', N'Amok Koşucusu', N'Stefan Zweig', N'Charlesbridge', CAST(N'2015-01-01' AS Date), N'aciklama yok', 19.8, 103, 11, 57)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'158-7-121299-94-9', N'Uçurtma Avcısı', N'Khaled Hosseini,', N'Charlesbridge', CAST(N'2004-01-01' AS Date), N'aciklama yok', 12.74, 101, 11, 58)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'158-7-121299-97-9', N'Dönüşüm', N'Franz Kafka,', N'Columbia University Press', CAST(N'2015-01-01' AS Date), N'aciklama yok', 23.99, 100, 10, 59)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'158-7-121799-94-9', N'Yabancı', N'Albert Camus,', N'Charlesbridge', CAST(N'2004-01-01' AS Date), N'aciklama yok', 15.8, 102, 11, 60)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'159-0-101739-94-9', N'Beyaz Zambaklar Ülkesi', N'Grigory Petrov', N'Charlesbridge', CAST(N'2013-01-01' AS Date), N'aciklama yok', 39.8, 105, 11, 61)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'159-0-101799-94-9', N'Olasılıksız', N'Adam Fawer', N'Charlesbridge', CAST(N'2013-01-01' AS Date), N'aciklama yok', 39.8, 104, 11, 62)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'159-0-105739-94-9', N'Sol Ayağım', N'Christy Brown', N'Charlesbridge', CAST(N'2013-01-01' AS Date), N'aciklama yok', 42.6, 107, 11, 63)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'159-0-111739-94-9', N'Beyaz Gemi', N'Cengiz Aytmatov', N'İnkılap YAYINEVİ', CAST(N'2013-01-01' AS Date), N'aciklama yok', 42.6, 50, 5, 64)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'159-2-111739-94-9', N'Momo', N'Michael Ende', N'Charlesbridge', CAST(N'2008-01-01' AS Date), N'aciklama yok', 55, 108, 11, 65)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-101926-56-0', N'Sinekli Bakkal ', N'Halide Edib Adıvar', N'Batı Akademi', CAST(N'2016-01-01' AS Date), N'aciklama yok', 15.75, 70, 7, 66)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-190996-51-7', N'Tütün Zamanı', N'Necati Cumalı', N'Batı Akademi', CAST(N'2001-01-01' AS Date), N'aciklama yok', 25.99, 67, 7, 67)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-191906-56-7', N'Sokakta', N'Bahattin Özkişi', N'Batı Akademi', CAST(N'2012-01-01' AS Date), N'aciklama yok', 29.98, 69, 7, 68)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-191946-51-7', N'Suç ve Ceza', N'Dostoyevski', N'Batı Akademi', CAST(N'2012-01-01' AS Date), N'aciklama yok', 29.99, 68, 7, 69)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-191956-51-7', N'Vadideki Zambak  ', N'Balzac', N'Batı Akademi', CAST(N'2013-01-01' AS Date), N'aciklama yok', 23.99, 66, 7, 70)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-193736-51-0', N'Yaşar Ne Yaşar Ne Yaşamaz ', N'Aziz Nesin', N'Batı Akademi', CAST(N'2005-01-01' AS Date), N'aciklama yok', 16.95, 64, 7, 71)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'176-7-193766-51-0', N'Yaşar Ne Yaşar Ne Yaşamaz ', N'Aziz Nesin', N'Batı Akademi', CAST(N'2005-01-01' AS Date), N'aciklama yok', 16.95, 64, 7, 72)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'193-7-164396-31-7', N'Karartma Geceleri ', N'Rıfat Ilgaz', N'Bilgin Kültür Sanat', CAST(N'2013-01-01' AS Date), N'aciklama yok', 19.5, 83, 9, 73)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'197-7-101806-56-7', N'Robinson Crusoe ', N'Daniel Defoe', N'Berfin Yayınları', CAST(N'2018-01-01' AS Date), N'aciklama yok', 28.95, 75, 8, 74)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'197-7-101876-56-7', N'Sahnenin Dışındakiler ', N'Halide Edip Adıvar', N'Berfin Yayınları', CAST(N'2002-01-01' AS Date), N'aciklama yok', 24.75, 74, 8, 75)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'197-7-101886-56-7', N'Savaş ve Barış ', N'Tolstoy', N'Berfin Yayınları', CAST(N'1962-01-01' AS Date), N'aciklama yok', 18.75, 73, 8, 76)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'197-7-101926-56-7', N' Sergüzeşt  ', N'Samipaşazade Sezai', N'Batı Akademi', CAST(N'2018-01-01' AS Date), N'aciklama yok', 15.25, 72, 7, 151)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'222-2-113306-02-1', N'Politikada Bir Sürgün', N'Yakup Kadri', N'Can Yayınları', CAST(N'1940-01-01' AS Date), N'aciklama', 10, 1, 1, 77)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'222-2-163306-02-1', N'Ankara', N'Yakup Kadri', N'Can Yayınları', CAST(N'1955-01-01' AS Date), N'aciklama', 10, 1, 1, 78)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'222-2-183346-02-1', N'Körlük', N'Jose Saramago', N'Can Yayınları', CAST(N'1995-01-01' AS Date), N'aciklama', 29, 7, 1, 79)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'222-2-193306-02-1', N'Politikada Bir Sürgün', N'Yakup Kadri', N'Can Yayınları', CAST(N'1940-01-01' AS Date), N'aciklama', 10, 1, 1, 80)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'222-2-193467-02-1', N'Altın Işık', N'Ziya Gökalp', N'Can Yayınları', CAST(N'1923-01-01' AS Date), N'aciklama', 32, 5, 1, 81)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'226-2-186756-09-1', N'Benim Zürafam Uçabilir', N'Mert Arık', N'Can Yayınları', CAST(N'2021-01-01' AS Date), N'aciklama yok', 15, 9, 1, 82)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'226-2-189356-09-1', N'Hayvan Çiftliği', N'George Orwell', N'Can Yayınları', CAST(N'1945-01-01' AS Date), N'aciklama yok', 10, 9, 1, 83)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'226-2-189796-09-1', N'Kırmızı Pazartesi', N'Gabriel Garcia Marquez', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1981-01-01' AS Date), N'aciklama yok', 17, 11, 2, 84)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'226-2-193356-09-1', N'Simyacı', N'Paulo Coelho', N'Can Yayınları', CAST(N'1988-01-01' AS Date), N'aciklama', 42, 8, 1, 85)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'226-2-399356-09-1', N'Fareler ve İnsanlar', N'John Steinbeck', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1945-01-01' AS Date), N'aciklama yok', 33, 12, 2, 86)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'232-1-193467-02-1', N'Şeker Portakalı', N'Jose Mauro De Vasconcelos', N'Can Yayınları', CAST(N'1968-01-01' AS Date), N'aciklama', 24, 6, 1, 87)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'335-4-12534-12-3', N'Arachnoid Mater', N'Serkan Karaismailoğlu', N'ELMA YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 25, 152, 19, 163)
GO
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'426-2-186756-09-1', N'Kürk Mantolu Madonna', N'Sabahattin Ali', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1943-01-01' AS Date), N'aciklama yok', 4, 15, 2, 88)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-2-156756-39-1', N'Aylak Adam ', N'Yusuf Atılgan', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1923-01-01' AS Date), N'aciklama yok', 63, 15, 2, 89)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-2-186756-09-1', N'Veronika Ölmek İstiyor', N'Paulo Coelho', N'Can Yayınları', CAST(N'1943-01-01' AS Date), N'aciklama yok', 21, 8, 1, 90)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-2-186756-79-1', N'Zaman Bisikleti', N'Bilgin Adalı', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1989-01-01' AS Date), N'aciklama yok', 33, 15, 2, 91)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-133656-96-1', N'İnsan Nedir?', N'Mark Twain', N'KRONİK YAYINLARI', CAST(N'2021-01-01' AS Date), N'aciklama yok', 23, 29, 4, 92)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-135936-46-1', N'Jane Eyre', N'Charlotte Brontë', N'KRONİK YAYINLARI', CAST(N'2019-01-01' AS Date), N'aciklama yok', 49, 26, 4, 93)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-135956-46-1', N'1984', N'George Orwell', N'KRONİK YAYINLARI', CAST(N'2019-01-01' AS Date), N'aciklama yok', 23, 28, 4, 94)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-142263-96-1', N'Koku', N'Patrick Süskind', N'İnkılap YAYINEVİ', CAST(N'2019-01-01' AS Date), N'aciklama yok', 35, 36, 5, 95)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-142263-98-1', N'Biz', N'Yevgeni Zamyatin', N'İnkılap YAYINEVİ', CAST(N'2019-01-01' AS Date), N'aciklama yok', 35, 37, 5, 96)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-142363-96-1', N'Huzur', N'Ahmet Hamdi Tanpınar', N'KRONİK YAYINLARI', CAST(N'2013-01-01' AS Date), N'aciklama yok', 32, 34, 4, 97)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-142763-96-1', N'Son Ada', N'Zülfü Livaneli', N'KRONİK YAYINLARI', CAST(N'2016-01-01' AS Date), N'aciklama yok', 35, 35, 4, 98)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-144656-96-1', N'Üç Kedi Bir Dilek', N'Sara Şahinkanat', N'KRONİK YAYINLARI', CAST(N'2021-01-01' AS Date), N'aciklama yok', 63, 30, 4, 99)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-148465-96-1', N'Zeytindağı', N'Falih Rıfkı Atay', N'KRONİK YAYINLARI', CAST(N'2013-01-01' AS Date), N'aciklama yok', 37, 32, 4, 100)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-148963-96-1', N'İnce Memed 2', N'Yaşar Kemal', N'KRONİK YAYINLARI', CAST(N'2020-01-01' AS Date), N'aciklama yok', 32, 33, 4, 101)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-148965-96-1', N'Satranç ', N'Stefan Zweig', N'KRONİK YAYINLARI', CAST(N'2019-01-01' AS Date), N'aciklama yok', 33, 31, 4, 102)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-183666-79-1', N'Masumiyet Müzesi', N'Orhan Pamuk', N'İTHAKİ YAYINLARI', CAST(N'2008-01-01' AS Date), N'aciklama yok', 50, 19, 3, 103)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-183966-79-1', N'Balıkçı ve Oğlu', N'Zülfü Livaneli', N'İTHAKİ YAYINLARI', CAST(N'2021-01-01' AS Date), N'aciklama yok', 25, 19, 3, 104)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-185666-55-1', N'Pinokyo ', N'Carlo Collodi', N'İTHAKİ YAYINLARI', CAST(N'1995-01-01' AS Date), N'aciklama yok', 35, 21, 3, 105)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-185666-79-1', N'Huzursuzluk', N'Zülfü Livaneli', N'İTHAKİ YAYINLARI', CAST(N'2000-01-01' AS Date), N'aciklama yok', 37, 20, 3, 106)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-186756-79-1', N'Dune', N'Frank Herbert', N'KIRMIZI KEDİ YAYINEVİ', CAST(N'1989-01-01' AS Date), N'aciklama yok', 37, 15, 2, 107)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-186966-79-1', N'Geliştiren Anne-Baba', N'Doğan Cüceloğlu', N'İTHAKİ YAYINLARI', CAST(N'1959-01-01' AS Date), N'aciklama yok', 55, 18, 3, 108)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-197466-55-1', N'Yaşamak', N'Yu Hua', N'KRONİK YAYINLARI', CAST(N'2019-01-01' AS Date), N'aciklama yok', 20, 24, 4, 109)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-197836-55-1', N'Yaban Kazı', N'Ogai Mori', N'KRONİK YAYINLARI', CAST(N'2021-01-01' AS Date), N'aciklama yok', 20, 25, 4, 110)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'456-5-198666-55-1', N'Ardından ', N'Natsume Soseki', N'KRONİK YAYINLARI', CAST(N'1987-01-01' AS Date), N'aciklama yok', 43, 23, 4, 111)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'555-2-133303-02-6', N'A Vision', N'William Butler Yeats', N'Can Yayınları', CAST(N'1909-01-01' AS Date), N'Açıklama yok', 35, 4, 1, 112)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'555-2-193306-02-1', N'Dorian Grayin Portresi', N'Oscar Wilde', N'Can Yayınları', CAST(N'1890-01-01' AS Date), N'Açıklama yok', 18, 3, 1, 113)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'555-2-193333-02-1', N'Yalnız Sıkıcı İnsanlar', N'Oscar Wilde', N'Can Yayınları', CAST(N'1880-01-01' AS Date), N'Açıklama yok', 25, 3, 1, 114)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'555-2-193336-02-1', N'Mutlu Prens', N'Oscar Wilde', N'Can Yayınları', CAST(N'1890-01-01' AS Date), N'Açıklama yok', 15, 3, 1, 115)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'710-2-17517-93-9', N'Siyah Lale', N'Alexandre Dumas', N'Çatı Kitapları', CAST(N'1896-01-01' AS Date), N'aciklama yok', 11.9, 129, 14, 116)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'720-2-17515-93-9', N'Mavi Kuş', N'Mustafa Kutlu', N'Çırağan Kitap', CAST(N'1997-01-01' AS Date), N'aciklama yok', 8.9, 131, 15, 117)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'720-2-17517-93-9', N'Vişne Bahçesi', N'Anton Çehov', N'Çatı Kitapları', CAST(N'1935-01-01' AS Date), N'aciklama yok', 6.9, 130, 14, 118)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'720-2-17715-93-9', N'The Secret - Sır', N'Rhonda Byrne', N'Çırağan Kitap', CAST(N'2003-01-01' AS Date), N'aciklama yok', 13.99, 133, 15, 119)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'720-2-17815-93-9', N'Kum ve Köpük', N'Halil Cibran', N'Çırağan Kitap', CAST(N'2011-01-01' AS Date), N'aciklama yok', 15.9, 132, 15, 120)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'736-0-102322-50-7', N'Gora ', N'Rabindranath Tagore', N'İnkılap YAYINEVİ', CAST(N'2002-01-01' AS Date), N'aciklama yok', 55, 46, 5, 121)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'736-0-102713-50-7', N'Küçük Kara Balık', N'Samed Behrengi', N'İnkılap YAYINEVİ', CAST(N'2019-01-01' AS Date), N'aciklama yok', 22.99, 44, 5, 122)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'736-0-102913-50-7', N'Bulantı', N'Jean Paul Sartre', N'İnkılap YAYINEVİ', CAST(N'2019-01-01' AS Date), N'aciklama yok', 25.25, 44, 5, 123)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'736-5-102713-50-7', N'İnci', N'John Steinbeck', N'İnkılap YAYINEVİ', CAST(N'2020-01-01' AS Date), N'aciklama yok', 17.99, 43, 5, 124)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17565-43-8', N'Pembe Fili Düşünme', N'Zeynep Selvili Çarmıklı', N'Çocuk Gezegeni', CAST(N'2010-01-01' AS Date), N'aciklama yok', 35.99, 140, 16, 125)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17715-93-9', N'Bana İkimizi Anlat', N'Ahmet Batman', N'Çırağan Kitap', CAST(N'2019-01-01' AS Date), N'aciklama yok', 16.99, 134, 15, 126)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17745-43-9', N'Yaşıyoruz Sessizce', N'Şükrü Erbaş', N'Çırağan Kitap', CAST(N'2011-01-01' AS Date), N'aciklama yok', 21.99, 136, 15, 127)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17745-93-9', N'Siyah Süt', N'Elif Şafak', N'Çırağan Kitap', CAST(N'2014-01-01' AS Date), N'aciklama yok', 18.99, 135, 15, 128)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17765-43-0', N'Alemdağda Var Bir Yılan', N'Sait Faik Abasıyanık', N'Çocuk Gezegeni', CAST(N'2015-01-01' AS Date), N'aciklama yok', 23.99, 138, 16, 129)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17765-43-8', N'Ben Sana Mecburum', N'Attila İlhan', N'Çocuk Gezegeni', CAST(N'2019-01-01' AS Date), N'aciklama yok', 27.99, 139, 16, 130)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'750-2-17765-43-9', N'Umut', N'Ayşe Kulin', N'Çocuk Gezegeni', CAST(N'2017-01-01' AS Date), N'aciklama yok', 23.99, 137, 16, 131)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17505-04-8', N'Coşkuyla Ölmek', N'Şule Gürbüz', N'YEDİTEPE YAYINEVİ', CAST(N'2020-01-01' AS Date), N'aciklama yok', 32.99, 144, 18, 132)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17515-04-0', N'Toparlanın Gitmiyoruz', N'İsmet Özel', N'YEDİTEPE YAYINEVİ', CAST(N'2020-01-01' AS Date), N'aciklama yok', 32.99, 146, 18, 133)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17515-04-8', N'Kusursuz Talan', N'Hasan Özlen', N'YEDİTEPE YAYINEVİ', CAST(N'2020-01-01' AS Date), N'aciklama yok', 32.99, 145, 18, 134)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17565-04-8', N'Leylâ ile Mecnûn', N'Nusret Özcan', N'Çocuk Gezegeni', CAST(N'1991-01-01' AS Date), N'aciklama yok', 36.99, 143, 16, 135)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17565-43-8', N'4N1K', N'Büşra Yılmaz', N'Çocuk Gezegeni', CAST(N'2020-01-01' AS Date), N'aciklama yok', 37.99, 141, 16, 136)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-17565-44-8', N'Yaralı', N'Kahraman Tazeoğlu', N'Çocuk Gezegeni', CAST(N'2017-01-01' AS Date), N'aciklama yok', 34.99, 142, 16, 137)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-88815-04-0', N'Paradise Lost', N'John Milton', N'YEDİTEPE YAYINEVİ', CAST(N'1667-01-01' AS Date), N'aciklama yok', 55, 147, 18, 155)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'850-2-88815-64-0', N'Dantenin Cehennemi', N'Dante Alighieri', N'YEDİTEPE YAYINEVİ', CAST(N'1007-01-01' AS Date), N'aciklama yok', 80, 148, 18, 152)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'908-2-163306-02-1', N'Yaban', N'Yakup Kadri', N'Can Yayınları', CAST(N'1955-01-01' AS Date), N'aciklama', 10, 1, 1, 138)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'908-2-383306-02-1', N'Kiralık Konak', N'Yakup Kadri', N'Can Yayınları', CAST(N'1960-01-01' AS Date), N'aciklama', 10, 1, 1, 139)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'956-5-142263-98-1', N'Yeni Dünya', N'Sabahattin Ali', N'Can Yayınları', CAST(N'2019-01-01' AS Date), N'aciklama yok', 24, 1, 1, 140)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-102713-50-7', N'Swamp Thing Efsanesi', N'Alan Moore', N'İnkılap YAYINEVİ', CAST(N'2022-01-01' AS Date), N'aciklama yok', 15.95, 42, 5, 141)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-102713-90-1', N'İyi İnsan Olma Sanatı', N'Mustafa Güldağı', N'İnkılap YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 15, 41, 5, 142)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-102713-90-7', N'Beyaz Zambaklar Ülkesinde', N'Grigory Petrov', N'İnkılap YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 17.25, 41, 5, 143)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-102713-98-1', N'Göğe Bakma Durağı', N'Turgut Uyar', N'İnkılap YAYINEVİ', CAST(N'2019-01-01' AS Date), N'aciklama yok', 11, 40, 5, 144)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-142263-98-1', N'Limon Kütüphanesi', N'Jo Cotterill', N'İnkılap YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 9, 38, 5, 145)
INSERT [dbo].[Kitaplar] ([ISBN], [ad], [yazar], [yayınevi], [ytarihi], [aciklama], [fiyat], [yid], [yno], [sid]) VALUES (N'966-5-142713-98-1', N'Osman', N'Ayfer Tunç', N'İnkılap YAYINEVİ', CAST(N'2021-01-01' AS Date), N'aciklama yok', 11, 39, 5, 146)
GO
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (1, N'kıvanç', N'tatlıtuğ', N'istanbul', N'bağcılar', N'mahalle', 34344)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (2, N'ahmet', N'kara', N'adana', N'barajyolu', N'mahalle', 35644)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (3, N'mustafa', N'yılmaz', N'istanbul', N'beylikdüzü', N'Adnan Kahveci', 35641)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (4, N'kemal', N'aslan', N'istanbul', N'beykoz', N'Acarlar', 36641)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (5, N'ayşe', N'yıldırım', N'istanbul', N'küçükçekmece', N'Atakent', 36541)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (6, N'kamil', N'çelik', N'istanbul', N'bağcılar', N'100.yıl', 36541)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (7, N'fatma', N'öztürk', N'antalya', N'gaziosmanpaşa', N'Atakent', 30541)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (9, N'elif', N'şen', N'mersin', N'erdemli', N'merkez', 33541)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (11, N'ayşe', N'kara', N'istanbul', N'kartal', N'merkez', 34341)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (12, N'mehmet ', N'çevik', N'istanbul', N'kartal', N'büyükçekmece', 33341)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (13, N'hasan', N'yastı', N'hatay', N'iskenderun', N'inci', 33371)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (14, N'yaren', N'bilgic', N'eskisehir', N'mustafa kemal', N'manzur', 33671)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (15, N'ruveyda', N'Doğan', N'istanbul', N'küçükçekmece', N'fatih', 33681)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (16, N'derya', N'sapmaz', N'istanbul', N'sancaktepe', N'onur', 33581)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (17, N'meryem', N'akcaoğlu', N'istanbul', N'ataşehir', N'inönü', 33881)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (18, N'damla', N'yıldız', N'gaziantep', N'kayışdağı', N'merkez', 63881)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (19, N'ayşe', N'şahin', N'konya', N'selçuklu', N'melikşah', 39881)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (20, N'ömer faruk ', N'şahin', N'karabük', N'safranbolu', N'adalet', 33981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (21, N'halil ', N'özdemir', N'istanbul', N'avcılar', N'narin', 34981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (22, N'erdem', N'arı', N'istanbul', N'esenyurt', N'türbe', 37981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (23, N'zarife', N'çerçi', N'istanbul', N'bakıköy', N'ambarlı', 37981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (24, N'nuray', N'bozdoğan', N'istanbul', N'kadıköy', N'sağlık', 34581)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (25, N'inci', N'tan', N'istanbul', N'zeytinburnu', N'hürriyet', 34981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (26, N'bucu', N'efil', N'istanbul', N'pendik', N'zafer', 34081)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (27, N'şenay', N'şahin', N'istanbul', N'eyüpsultan', N'şamlar', 34081)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (28, N'yalçın', N'polat', N'ankara', N'gazipaşa', N'ulus', 6081)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (29, N'cengiz', N'şimşek', N'istanbul', N'sarıyer', N'ulus', 6581)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (30, N'hatice', N'korkmaz', N'istanbul', N'beşiktaş', N'etiler', 6981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (32, N'pembe', N'cansız', N'istanbul', N'beşiktaş', N'etiler', 6981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (33, N'özcan', N'kurt', N'istanbul', N'ümraniye', N'inan', 8981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (34, N'ali', N'derin', N'istanbul', N'üsküdar', N'fıstıkağacı', 9981)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (35, N'veli', N'kılıç', N'istanbul', N'fatih', N'yalıköy', 9991)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (36, N'ahmet', N'dölek', N'istanbul', N'zeytinburnu', N'yakuplu', 9591)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (37, N'alperen', N'er', N'istanbul', N'esenler', N'kemer', 3591)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (38, N'bilge', N'eren', N'istanbul', N'kağıthane', N'nurtepe', 11591)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (39, N'cennet', N'ateş', N'istanbul', N'güngören', N'akıncılar', 11541)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (40, N'dilara', N'yılmaz', N'istanbul', N'maltepe', N'girne', 11741)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (41, N'ebru', N'mavi', N'istanbul', N'şişli', N'fulya', 11751)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (42, N'elif', N'keskin', N'istanbul', N'şişli', N'inönü', 11781)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (43, N'esra', N'uğran', N'istanbul', N'tuzla', N'cami', 11731)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (44, N'gökçe', N'kalay', N'istanbul', N'ümraniye', N'huzur', 11931)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (45, N'hakan', N'topal', N'istanbul', N'üsküdar', N'acıbadem', 11961)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (48, N'kurşat', N'özalp', N'istanbul', N'kartal', N'atalar', 17971)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (49, N'kübra', N'ikiz', N'istanbul', N'pendik', N'batı', 13971)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (50, N'mete', N'derin', N'istanbul', N'fatih', N'aksaray', 17871)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (51, N'mete', N'yastı', N'istanbul', N'esenyurt', N'çınar', 10871)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (53, N'nazlı', N'güven', N'istanbul', N'çekmeköy', N'taşdelen', 19871)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (54, N'selçuk', N'uzun', N'istanbul', N'çekmeköy', N'koçullu', 19871)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (55, N'yasemin', N'aydın', N'istanbul', N'çatalca', N'kalfa', 18871)
INSERT [dbo].[Musteriler] ([mid], [ad], [soyad], [sehir], [ilce], [mahalle], [pkodu]) VALUES (56, N'zeliha', N'serin', N'istanbul', N'büyükçekmece', N'bahçelievler', 189871)
GO
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (2, N'850-2-17565-43-8')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (1, N'850-2-17565-04-8')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (4, N'710-2-17517-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (5, N'850-2-17515-04-0')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (6, N'850-2-17515-04-0')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (7, N'110-2-12517-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (8, N'009-2-17517-93-0')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (9, N'019-2-102017-93-0')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (10, N'456-5-135936-46-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (11, N'019-2-111739-94-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (12, N'456-5-148965-96-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (13, N'110-2-17517-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (14, N'456-5-148963-96-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (15, N'159-0-101739-94-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (15, N'222-2-193467-02-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (16, N'226-2-399356-09-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (17, N'226-2-399356-09-1')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (18, N'736-0-102713-50-7')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (20, N'750-2-17765-43-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (21, N'019-2-10517-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (22, N'019-2-112637-94-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (23, N'110-2-17517-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (24, N'750-2-17715-93-9')
INSERT [dbo].[Odunc_bilgi] ([uid], [ISBN]) VALUES (25, N'750-2-17715-93-9')
GO
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (1, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-12' AS Date), 1, 33345336, N'156-0-101203-52-7')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (2, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-15' AS Date), 2, 33346336, N'456-5-185666-55-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (3, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-16' AS Date), 3, 33346336, N'956-5-142263-98-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (4, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-18' AS Date), 4, 33346336, N'456-5-135936-46-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (6, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-21' AS Date), 6, 33346345, N'456-5-198666-55-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (7, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-22' AS Date), 7, 33348336, N'956-5-142263-98-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (8, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-23' AS Date), 16, 34346336, N'103-7-121198-97-9')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (9, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-24' AS Date), 9, 33546336, N'850-2-17505-04-8')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (10, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-27' AS Date), 17, 33646336, N'456-5-135936-46-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (11, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-29' AS Date), 11, 33546236, N'156-0-100013-52-7')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (12, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-29' AS Date), 12, 31546236, N'456-5-135956-46-1')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (14, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-19' AS Date), 14, 33549236, N'158-0-101799-94-9')
INSERT [dbo].[Siparis_bilgi] ([spid], [tarih], [iletimtarih], [id], [takipno], [ISBN]) VALUES (15, CAST(N'2022-01-13' AS Date), CAST(N'2022-01-21' AS Date), 15, 33543236, N'019-2-102017-93-0')
GO
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (1, 38)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (2, 39)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (3, 27)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (4, 48)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (5, 16)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (6, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (7, 79)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (8, 58)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (9, 66)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (10, 10)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (11, 38)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (12, 43)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (13, 18)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (14, 23)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (15, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (16, 73)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (17, 26)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (18, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (19, 75)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (20, 13)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (21, 36)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (22, 7)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (23, 45)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (24, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (26, 72)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (27, 48)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (28, 39)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (29, 9)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (30, 94)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (31, 34)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (32, 12)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (33, 39)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (34, 3)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (35, 70)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (36, 74)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (37, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (38, 87)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (39, 25)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (40, 53)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (41, 62)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (42, 6)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (43, 87)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (44, 25)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (45, 30)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (46, 40)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (47, 21)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (48, 23)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (49, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (50, 51)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (51, 40)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (52, 25)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (53, 35)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (54, 76)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (55, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (56, 42)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (57, 26)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (58, 61)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (59, 34)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (60, 5)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (61, 51)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (62, 15)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (63, 13)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (64, 71)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (65, 5)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (66, 15)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (67, 58)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (68, 7)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (69, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (70, 18)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (71, 4)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (72, 74)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (73, 13)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (74, 7)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (75, 46)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (76, 10)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (77, 55)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (78, 76)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (79, 77)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (80, 88)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (81, 24)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (82, 50)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (83, 75)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (84, 66)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (85, 61)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (86, 73)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (87, 40)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (88, 27)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (89, 87)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (90, 49)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (91, 60)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (92, 51)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (93, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (94, 21)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (95, 40)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (96, 29)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (97, 39)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (98, 52)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (99, 70)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (100, 72)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (101, 31)
GO
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (102, 83)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (103, 90)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (104, 52)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (105, 12)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (106, 58)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (107, 42)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (108, 84)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (109, 5)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (110, 78)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (111, 98)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (112, 2)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (113, 44)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (114, 56)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (115, 12)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (116, 43)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (117, 12)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (118, 51)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (119, 14)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (120, 22)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (121, 72)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (122, 3)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (123, 84)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (124, 23)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (125, 20)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (126, 86)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (127, 18)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (128, 3)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (129, 50)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (130, 37)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (131, 83)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (132, 60)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (133, 55)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (134, 22)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (135, 97)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (136, 18)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (137, 28)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (138, 15)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (139, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (140, 24)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (141, 28)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (142, 93)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (143, 38)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (144, 78)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (145, 16)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (146, 79)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (147, 56)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (148, 85)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (149, 10)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (150, 16)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (151, 54)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (152, 51)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (153, 9)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (154, 5)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (155, 1)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (156, 19)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (158, 62)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (159, 52)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (160, 6)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (161, 68)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (162, 14)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (163, 8)
INSERT [dbo].[Stok] ([sid], [adet]) VALUES (164, 85)
GO
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (1, N'Şerife', N'Tan', N'serifetan@gmail.com', N'05308480332', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (2, N'Brad', N'Pitt', N'crazybrad@hotmail.com', N'05555354565', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (4, N'kağan', N'tan', N' kağan@hotmail.com', N'05555354565', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (5, N'deniz', N'özkan', N' deniz@hotmail.com', N'05555351765', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (6, N'mustafa', N'kara', N' mustafa@hotmail.com', N'05745351765', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (7, N'cengiz', N'tan', N' cengiz@hotmail.com', N'07745351765', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (8, N'ali', N'yetkin', N' ali@hotmail.com', N'05745351765', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (9, N'arzu', N'ercan', N' arzu@hotmail.com', N'05745381765', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (10, N'ayse', N'kalay', N' ayse@hotmail.com', N'05745881765', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (11, N'ayse', N'ateş', N' ayse@hotmail.com', N'05745381865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (12, N'begüm', N'yıldırım', N' begüm@hotmail.com', N'05745381865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (13, N'belgin', N'bor', N' belgin@hotmail.com', N'05745881865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (14, N'benay', N'biçer', N' benay@hotmail.com', N'05745881865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (15, N'betül', N'yıldız', N' betül@hotmail.com', N'05748881865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (16, N'büşra', N'dolat', N' busra@hotmail.com', N'05748481865', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (17, N'cennet', N'gür', N' busra@hotmail.com', N'05748481465', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (18, N'cihan', N'kara', N' cihan@hotmail.com', N'05348481465', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (20, N'demet', N'eser', N' demet@hotmail.com', N'05348471465', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (21, N'derya', N'oruç', N' derya@hotmail.com', N'05378481465', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (22, N'esra', N'arı', N' esra@hotmail.com', N'05378481465', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (23, N'durmuş', N'serin', N' durmus@hotmail.com', N'05378481465', N'erkek')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (24, N'eda', N'acar', N' eda@hotmail.com', N'05378489465', N'kadın')
INSERT [dbo].[Uyeler] ([uid], [uyead], [uyesoyad], [eposta], [telefon], [cinsiyet]) VALUES (25, N'elfin', N'uçar', N' elfin@hotmail.com', N'05378489405', N'kadın')
GO
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (1, N'Can Yayınları', N'Şişli', N'www.cy.com.tr', N'02122505050')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (2, N'KIRMIZI KEDİ YAYINEVİ', N'Beyoğlu', N'kirmizikedi.com', N'05369878552')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (3, N'İTHAKİ YAYINLARI', N'Beykoz', N'ithakiyayınları.com', N'05899878552')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (4, N'KRONİK YAYINLARI', N'Küçükyalı', N'ithakiyayınları.com', N'05899887552')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (5, N'İnkılap YAYINEVİ', N'Ümraniye', N'inkılapyayınları.com', N'05899887002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (6, N'Anka Kadın Yayınları', N'Ümraniye', N'ankayayınları.com', N'05897887002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (7, N'Batı Akademi', N'ŞİŞLİ', N'batıyayınları.com', N'05812887002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (8, N'Berfin Yayınları', N'Sarıyer', N'berfinyayınları.com', N'05412887002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (9, N'Bilgin Kültür Sanat', N'Sarıyer', N'bilginnyayınları.com', N'05412587002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (10, N'Columbia University Press', N'Sarıyer', N'columbiayayınları.com', N'05472587002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (11, N'Charlesbridge', N'Ataşehir', N'charlesyayınları.com', N'05442587002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (12, N'Ceylan Yayıncılık', N'Çekmeköy', N'ceylanyayınları.com', N'05442581002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (13, N'Ceviz Yayıncılık', N'Kartal', N'cevizyayınları.com', N'05443581002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (14, N'Çatı Kitapları', N'Kartal', N'çatiyayınları.com', N'05443581002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (15, N'Çırağan Kitap', N'Esenyurt', N'çırağanyayınları.com', N'05843581002')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (16, N'Çocuk Gezegeni', N'Ataşehir', N'çocukgezeni.com', N'05843581502')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (17, N'Damla Yayınevi', N'Fatih', N'damlayayınları.com', N'05843581502')
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (18, N'YEDİTEPE YAYINEVİ', NULL, NULL, NULL)
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (19, N'ELMA YAYINEVİ', NULL, NULL, NULL)
INSERT [dbo].[Yayinevleri] ([yno], [ad], [adres], [website], [tel]) VALUES (21, N'TURUNCU YAYINEVİ', NULL, NULL, NULL)
GO
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (1, N'Yakup Kadri', N'Karaosmanoğlu', N'yko.com.tr')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (2, N'Yakup Kadri', N'BEYAZosmanoğlu', N'yko.com.tr')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (3, N'Oscar', N'Wilde', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (4, N'William Butler', N'Yeats', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (5, N'Ziya', N'Gökalp', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (6, N'Jose Mauro De', N'Vasconcelos', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (7, N'Jose', N'Jose Saramago', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (8, N'Paulo', N'Coelho', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (9, N'George', N'Orwell', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (11, N'Gabriel Garcia', N'Marquez', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (12, N'John', N'Steinback', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (14, N'Mert', N'Arık', N'bkmkitap.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (15, N'Sabahattin', N'Ali', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (16, N'Yusuf', N'Atılgan', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (17, N'Bilgin', N'Adalı', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (18, N'Frank', N'Herbert', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (19, N'Orhan', N'Pamuk', N'www.hepsiburada.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (20, N'Zülfü', N'Livaneli', N'kidega.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (21, N'Carlo', N'Colladi', N'kidega.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (23, N'Natsume', N'Soseki', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (24, N'Yu', N'Hua', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (25, N'Ogai', N'Mori', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (26, N'Charlotte', N'Brontë ', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (28, N'George', N'Orwell ', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (29, N'Mark', N'Twain ', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (30, N'Sara', N'Şahinkanat', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (31, N'Stefan', N'Zweig', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (32, N'Falih Rıfkı', N'Atay', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (33, N'Yaşar', N'Kemal', N'kitapkurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (34, N'Ahmet Hamdi', N'Tanpınar', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (35, N'Zülfü', N'Livaneli', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (36, N'Patrick', N'Süskind', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (37, N'Yevgeni', N'Zamyatin', N'kitapyurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (38, N'Jo', N'Cotterill', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (39, N'Ayfer', N'Tunç', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (40, N'Turgut', N'Uyar', N'kitapkurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (41, N'Mustafa', N'Güldağı', N'kitapkurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (42, N'Alan', N'Moore', N'kitapkurdu.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (43, N'John', N'Steinbeck', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (44, N'Samed', N'Behrengi', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (45, N'Jean Paul', N'Sarte', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (46, N'Rabindranath', N'Tagore', N'dr.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (47, N'Knut', N'Hamsun', N'ağaçyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (48, N'Memduh Şevket', N'Esendal', N'amorfyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (49, N'Jack', N'London', N'anıkulturyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (50, N'Cengiz', N'Aytmatov', N'andacyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (51, N'Oğuz', N'Atay', N'andacyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (52, N'Reşat Nuri', N'Güntekin', N'Timaşyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (53, N'Peyami', N'Safa', N'Timaşyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (54, N'Cervantes', NULL, N'Timaşyayınları.com.com')
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (55, N'ivo', N'Andriç', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (56, N'Faik', N'Baysal', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (57, N'Kemal', N'Tahir', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (58, N'Orhan', N'Kemal', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (59, N'John', N'Steinbeck', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (60, N'Peyami', N'Safa', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (62, N'Abbas', N'Sayar', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (63, N'Abbas', N'Sayar', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (64, N'Aziz', N'Nesin', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (66, N'Balzac', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (67, N'Necati', N'Cumalı', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (68, N'Dostoyevski', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (69, N'Bahattin', N'Özkişi', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (70, N'Halide Edip', N'Özkişi', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (71, N'William', N'Faulker', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (72, N'Samipaşazade', N'Sezai', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (73, N'Tolstoy', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (74, N'Halide Edip', N'Adıvar', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (75, N'Daniel', N'Defoe', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (76, N'Gogol', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (77, N'Cengiz', N'Dağcı', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (78, N'Sabahattin Kudret', N'Aksal', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (79, N'Charles', N'Dickens', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (80, N'Tarık', N'Buğra', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (81, N'Halit Ziya', N'Uşaklıgil', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (82, N'Yakup Kadri', N' Karaosmanoğlu', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (83, N'Rıfat', N'Ilgaz ', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (84, N'William', N'Faulkner ', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (85, N'Samipaşazade', N'Sezai ', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (86, N'Victor', N'Hugo ', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (87, N'Joanne', N'Greenberg ', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (88, N'Lev Nikolayeviç', N'Tolstoy', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (89, N'Anthony', N'Doerr', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (90, N'Ayşegül', N'Kocabıçak', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (91, N'Lance', N'Amstrong', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (92, N'Kostas', N'Mourselas', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (93, N'Altay', N'Öktem', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (94, N'Reşat Nuri', N'Güntekin', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (95, N'Küçük', N'İskender', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (96, N'Seyyidhan', N'Kömürcü', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (97, N'Paolo', N'Giordano', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (98, N'Joanne', N'Greenberg', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (99, N'Barış', N'Bıçakçı', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (100, N'Franz', N'Kafka', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (101, N'Khaled', N'Hosseini', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (102, N'Albert', N'Camus', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (103, N'Stefan', N'Zweig', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (104, N'Adam', N'Fawer', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (105, N'Grigory', N'Petrow', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (107, N'Christy', N'Brown', NULL)
GO
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (108, N'Michael', N'Ende', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (109, N'Montaigne', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (110, N'Robert Langdon Serisi 2', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (111, N'Canan', N'TAN', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (112, N'Ahmed', N'Arif', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (113, N'Virginia', N'Woolf', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (114, N'Nazan', N'Bekiroğlu', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (115, N'N.H.', N'Kleinbaum', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (116, N'Şemseddin', N'Sami', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (117, N'Suzanne', N'Collins', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (118, N'Hasan Ali', N'Toptaş', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (119, N'Elif', N'Şafak', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (120, N'Jules', N'Payot', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (121, N'Ahmet', N'Mithatt', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (122, N'Moliere', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (123, N'Sarah', N'Jio', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (124, N'Ayşe', N'Kulin', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (125, N'Markus', N'Zusak', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (126, N'Didem', N'Madak', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (127, N'Honore de', N'Balzac', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (128, N'Cemal', N'Süreya', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (129, N'Alexandre', N'Dumas', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (130, N'Anton', N'Çehov', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (131, N'Mustafa', N'Kutlu', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (132, N'Halil', N'Cibran', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (133, N'Rhonda', N'Byrne', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (134, N'Ahmet', N'Batman', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (135, N'Elif', N'Şafak', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (136, N'Şükrü', N'Erbaş', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (137, N'Ayşe', N'Kulin', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (138, N'Sait Faik', N'Abasıyanık', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (139, N'Atilla', N'İlhan', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (140, N'Zeynep Selvili', N'Çarmıklı', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (141, N'Büşra', N'Yılmaz', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (142, N'Kahraman', N'Tazeoğlu', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (143, N'Nusret', N'Özcan', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (144, N'Şule', N'Gürbüz', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (145, N'Hasan', N'Özlen', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (146, N'İsmet', N'Özel', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (147, N'John', N'Milton', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (148, N'Dante', N'Alighieri', NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (149, N'Angie Cruz', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (150, N'Sun Tzu', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (151, N'Serkan Karaismailoğlu', NULL, NULL)
INSERT [dbo].[Yazarlar] ([yid], [ad], [soyad], [website]) VALUES (153, N'Azra Kohen', NULL, NULL)
GO
ALTER TABLE [dbo].[Kampanya_bilgi]  WITH CHECK ADD  CONSTRAINT [FK_Kampanyalar] FOREIGN KEY([kno])
REFERENCES [dbo].[Kampanyalar] ([kno])
GO
ALTER TABLE [dbo].[Kampanya_bilgi] CHECK CONSTRAINT [FK_Kampanyalar]
GO
ALTER TABLE [dbo].[Kampanya_bilgi]  WITH CHECK ADD  CONSTRAINT [FK_Musteri] FOREIGN KEY([mid])
REFERENCES [dbo].[Musteriler] ([mid])
GO
ALTER TABLE [dbo].[Kampanya_bilgi] CHECK CONSTRAINT [FK_Musteri]
GO
ALTER TABLE [dbo].[Kategori_bilgi]  WITH CHECK ADD  CONSTRAINT [Fk_Kategoriler] FOREIGN KEY([kid])
REFERENCES [dbo].[Kategoriler] ([kid])
GO
ALTER TABLE [dbo].[Kategori_bilgi] CHECK CONSTRAINT [Fk_Kategoriler]
GO
ALTER TABLE [dbo].[Kategori_bilgi]  WITH CHECK ADD  CONSTRAINT [Fk_Kitap2] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Kitaplar] ([ISBN])
GO
ALTER TABLE [dbo].[Kategori_bilgi] CHECK CONSTRAINT [Fk_Kitap2]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH NOCHECK ADD  CONSTRAINT [FK_Kitaplar_Stok] FOREIGN KEY([sid])
REFERENCES [dbo].[Stok] ([sid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitaplar] NOCHECK CONSTRAINT [FK_Kitaplar_Stok]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH NOCHECK ADD  CONSTRAINT [FK_Kitaplar_Yayinevleri] FOREIGN KEY([yno])
REFERENCES [dbo].[Yayinevleri] ([yno])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitaplar] NOCHECK CONSTRAINT [FK_Kitaplar_Yayinevleri]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH NOCHECK ADD  CONSTRAINT [FK_Kitaplar_Yazarlar] FOREIGN KEY([yid])
REFERENCES [dbo].[Yazarlar] ([yid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitaplar] NOCHECK CONSTRAINT [FK_Kitaplar_Yazarlar]
GO
ALTER TABLE [dbo].[Odunc_bilgi]  WITH CHECK ADD  CONSTRAINT [FK_Kitaplar] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Kitaplar] ([ISBN])
GO
ALTER TABLE [dbo].[Odunc_bilgi] CHECK CONSTRAINT [FK_Kitaplar]
GO
ALTER TABLE [dbo].[Odunc_bilgi]  WITH CHECK ADD  CONSTRAINT [FK_Uyeler] FOREIGN KEY([uid])
REFERENCES [dbo].[Uyeler] ([uid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Odunc_bilgi] CHECK CONSTRAINT [FK_Uyeler]
GO
ALTER TABLE [dbo].[Siparis_bilgi]  WITH CHECK ADD  CONSTRAINT [Fk_Kitap] FOREIGN KEY([ISBN])
REFERENCES [dbo].[Kitaplar] ([ISBN])
GO
ALTER TABLE [dbo].[Siparis_bilgi] CHECK CONSTRAINT [Fk_Kitap]
GO
ALTER TABLE [dbo].[Siparis_bilgi]  WITH CHECK ADD  CONSTRAINT [Fk_Musteriler] FOREIGN KEY([id])
REFERENCES [dbo].[Musteriler] ([mid])
GO
ALTER TABLE [dbo].[Siparis_bilgi] CHECK CONSTRAINT [Fk_Musteriler]
GO
ALTER TABLE [dbo].[Kitaplar]  WITH CHECK ADD CHECK  (([fiyat]>(0)))
GO
