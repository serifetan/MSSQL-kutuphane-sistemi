
-- 1) Adý 'ayþe' olan müþterileri, müþteriler tablosundan bütün kolonlarýyla çaðýran sorgu.
 SELECT * FROM Musteriler WHERE ad='ayþe'

-- 2) 'a' ve 'z' ile biten þehirleri getiren sorgu
SELECT * FROM Musteriler WHERE sehir LIKE '%a'
select * from Yazarlar where ad like '%z'

-- 3) Soyadý u ile baþlayanlarý getiren sorgu
SELECT * FROM Musteriler WHERE soyad LIKE 'u%'

-- 4) Adýnýn ikinci harfi a olaný getiren sorgu
SELECT * FROM Musteriler WHERE ad like '_a%'

-- 5) Adý yükselen alfabetik sýraya göre listeleyen sorgu
SELECT * FROM Musteriler ORDER BY Ad ASC
SELECT * FROM Uyeler ORDER BY uyead ASC

-- 6) Adý azalan alfabetik sýraya göre listeleyen sorgu
SELECT * FROM Musteriler ORDER BY Ad DESC

-- 7) Kitaplar tablosundaki satýr sayýsýný sorgulamak için count() fonksiyonu kullanýlmýþtýr.
select count(*) as [Kitaplar Tablosu Satýr Sayýsý] from Kitaplar
-- 8) distinct komutu kullanýlarak ayný yazar sadece 1 kere gösterilmiþtir.
select distinct yazar from kitaplar
select yazar from Kitaplar

--9)Fiyatý 30'dan yüksek olanlarý getiren sorgu.
SELECT * FROM Kitaplar WHERE fiyat > 30

--Uyeler tablosundan uid'si 3 olan kaydý siler.
DELETE FROM Uyeler WHERE uid = 3

 --10) Fiyat aralýðýyla yükselen fiyata göre listeleme sorgusu.
 SELECT ISBN, ad as [Kitap Adý], yazar as [Yazar Adý ve Soyadý], yayýnevi as [Yayýnevi Ýsmi], 
 ytarihi as [Yayýn Tarihi], fiyat as [Fiyat] FROM Kitaplar WHERE fiyat BETWEEN 14.99 AND 20 ORDER BY fiyat ASC

  --Kitaplar tablosunun yayýnevi kolonunda boþluklu girilen deðerleri kýrpmak için kullanýlan fonksiyonlar (LTRIM VE RTRIM)
  update kitaplar
set yayýnevi= LTRIM(RTRIM(yayýnevi))

--11) Bir kitabýn, yayýnevi tablosundan bir yayýneviyle baðlantýsý olup olmadýðýný kontrol eden sorgu.
SELECT  ISBN, Kitaplar.ad as [Kitap Adý], yazar as [Yazar Adý ve Soyadý], Yayinevleri.ad as [Yayýnevi Ýsmi],
 ytarihi as [Yayýn Tarihi], fiyat as [Fiyat] FROM Kitaplar JOIN Yayinevleri ON Kitaplar.yno = Yayinevleri.yno
WHERE EXISTS 
  (SELECT *
   FROM Yayinevleri
   WHERE Kitaplar.yno = Yayinevleri.yno);

   /* 12) Kitaplar tablosu kategoriler ve kategori_bilgi tablosuna baðlanmýþtýr. Kategori tablosunda tanýmlanan kategoriler
	 kategori_bilgi tablosundan ISBN yardýmýyla kitaplara atanmýþtýr. */
SELECT Kitaplar.ad as [Kitap Adý], Kategoriler.ad as [Kategorisi], Kategoriler.bilgi as [Alt Kategorisi],
Yazarlar.ad as [Yazar Adý], Yazarlar.soyad as [Yazar Soyadý]
FROM Kitaplar
JOIN Kategori_bilgi ON Kitaplar.ISBN = Kategori_bilgi.ISBN
JOIN Kategoriler ON Kategori_bilgi.kid = Kategoriler.kid
JOIN Yazarlar ON Yazarlar.yid = Kitaplar.yid

	--13)Yazar tablosuna tanýmlanmýþ yazarlara atanan kitaplarý listeleyen sorgu.
SELECT Yazarlar.ad as [Yazar Adý], Yazarlar.soyad as [Yazar Soyadý], 
Kitaplar.ad as [Kitaplarý], 
CONVERT(varchar, Kitaplar.ytarihi, 103) as [Yayýn Tarihi]
FROM Kitaplar JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid ORDER BY [Yazar Adý] ASC

-- Yazarlar tablosundaki ad kolonunda boþluklu kalan isimleri kýrpan fonksiyon kullanýmý
	update Yazarlar
set ad = LTRIM(RTRIM(ad))

-- Kitaplar tablosundaki yazar kolonunda boþluklu kalan girdileri kýrpan fonksiyon
	update Kitaplar
set yazar = LTRIM(RTRIM(yazar))


	-- 14) Hangi üyeye hangi kitabýn ödünç verildiðini gösteren sorgu
SELECT uyead as [Üye adý], uyesoyad as [Üye Soyadý], ad as [Kitap Adý], yazar as [Yazar] FROM
Uyeler 
JOIN Odunc_bilgi ON Uyeler.uid = Odunc_bilgi.uid
JOIN Kitaplar ON Kitaplar.ISBN = Odunc_bilgi.ISBN

	-- 15) Kategori_bilgi sorgusu isbn ile bir kitabýn hangi kategori numarasýyla baðlantýlý olduðunu gösterir.
SELECT*FROM Kategori_bilgi
	-- 16) Kategorilerle ilgili bilgi veren sorgu
SELECT * FROM Kategoriler

	--17) Müþteri tablosundaki kayýtlarý listeleyen sorgu
SELECT mid as [Müþteri Numarasý], ad as [Ýsim], soyad as [Soyisim], 
	sehir as [Þehir], ilce as [Ýlçe], mahalle as [Mahalle], pkodu as [Posta Kodu] 
	FROM Musteriler

	--18) Siparis_bilgi tablosuna girilen kayýt sayesinde oluþan sipariþler bir müþteriye kitap ismi ile atanmaktadýr.
	--Müþteri, sipariþ ve kitap tablosunu birleþtiren sorgu þeklinde yazýlmýþtýr.
SELECT Siparis_bilgi.spid as [Sipariþ Numarasý], 
	Musteriler.ad as [Ýsim], Musteriler.soyad as [Soyisim],
	Musteriler.sehir as [Gönderim Þehri], Musteriler.ilce as [Ýlçesi],
	CONVERT(varchar, Siparis_bilgi.iletimtarih, 103) as [Gönderim Tarihi],
	Siparis_bilgi.takipno as [Takip Numarasý],
	Kitaplar.ISBN as [ISBN], Kitaplar.ad as [Kitap Adý],
	Kitaplar.yazar as [Yazar], Kitaplar.fiyat as [Fiyat]
	FROM Musteriler
	JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
	JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN ORDER BY iletimtarih ASC

	
	--19) Bir kampanya bir müþteriye kampanya_bilgi tablosuyla atanmaktadýr ve siparis_bilgi tablosuyla ilgili sipariþ ve kitap ismi baðlantýlý sorguyla gösterilmektedir.
SELECT Kampanyalar.kno as [Kampanya Numarasý], Kitaplar.ad as [Kitap Adý], 
	Musteriler.ad as [Müþteri Adý],
	Musteriler.soyad as [Müþteri Soyadý], Kampanyalar.ad as [Kampanya Adý],
	Kampanyalar.bilgi as [Kampanya Ýçeriði], Kampanyalar.bastarih as [Kampanya Baþlangýcý],
	Kampanyalar.bittarih as [Kampanya Bitiþi] From Kampanyalar
	JOIN Kampanya_bilgi ON Kampanyalar.kno = Kampanya_bilgi.kno
	JOIN Musteriler ON Musteriler.mid = Kampanya_bilgi.mid
	JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
	JOIN Kitaplar ON Siparis_bilgi.ISBN = Kitaplar.ISBN ORDER BY [Müþteri Adý] asc

	--20) Bir kitabýn atandýðý yazar ve yayýnevi sorgusu. Bu sorguda kitaplar tablosu, yayýnevi ve yazarlar tablosu ile baðlanmýþtýr.
	SELECT Kitaplar.ad as [Kitap Adý], Yazarlar.ad as [Yazar Adý], Yayinevleri.ad as [Yayýnevi]
	FROM Kitaplar 
	JOIN Yayinevleri ON Kitaplar.yno = Yayinevleri.yno
	JOIN Yazarlar ON Yazarlar.yid = Kitaplar.yid

	-- 21) Kitaplarýn stok id'sini ve adetini gösteren sorgu.
	SELECT Kitaplar.ad as [Kitap Adý], Kitaplar.yazar as [Yazar Adý], Kitaplar.sid as [Stok ID], Stok.adet as [Adet]
FROM Kitaplar 
JOIN Stok ON Kitaplar.sid = Stok.sid 

	-- Check constraint'i ile fiyatýn eksi girilmesi engellenir
	ALTER Table Kitaplar
	ADD Check (fiyat > 0)

	--Veri analizi

	-- 22) Group by kullanýmý, AVG()(ortalama) ve ROUND()(yuvarlama) fonksiyonu kullanýmý. Yayýnevlerinin fiyatlarýnýn ortalamasýný alan sorgu. (Yayinevleri tablosuyla baðlantýlý þekilde.)
SELECT Yayinevleri.ad as [Yayýnevi Adý], ROUND(AVG(Kitaplar.fiyat), 0) as [Ortalama Fiyat(TL)] FROM Kitaplar
JOIN Yayinevleri ON Yayinevleri.yno = Kitaplar.yno GROUP BY Yayinevleri.ad ORDER BY [Ortalama Fiyat(TL)] 

	-- 23) Yazara göre gruplayýp yazarýn tüm kitaplarýnýn fiyatlarýnýn ortalamasýný alan sorgu. Bu sayede bir yazarýn fiyatlandýrmasýna eriþebiliriz.
SELECT yazar as [Yazar], ROUND(AVG(fiyat), 0) as [Ortalama Fiyat(TL)] 
FROM Kitaplar GROUP BY yazar ORDER BY [Ortalama Fiyat(TL)] asc

 
	-- 24) Satýþlarýn toplam tutarý hakkýnda bilgi veren sorgu
SELECT sum(Kitaplar.fiyat) as [Müþterilerin harcadýðý toplam tutar] FROM Musteriler
JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN

	--25) En yüksek fiyatlý satýþýn tutarýný gösteren sorgu.
SELECT max(Kitaplar.fiyat) as [En yüksek fiyattan yapýlan satýþ], Kitaplar.ad as [Kitap Adý], Kitaplar.yazar as [Yazar Adý] 
FROM Siparis_bilgi
INNER JOIN Musteriler ON Musteriler.mid = Siparis_bilgi.id
INNER JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN  
group by Kitaplar.ad, Kitaplar.yazar, Kitaplar.fiyat order by fiyat desc
OFFSET 0 ROWS
FETCH FIRST 1 ROWS ONLY


	--26)Yazara göre gruplandýrýp o yazarýn en düþük fiyatlý satýþ tutarýný gösteren sorgu.
SELECT min(Kitaplar.fiyat) as [En düþük fiyattan yapýlan satýþ], Kitaplar.yazar as [Yazar] FROM Musteriler
JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN Group by yazar 

	-- 27)Kitaplarý en yüksek ortalama fiyata sahip yazar sorgusu
SELECT Top 1 Yazarlar.ad as [Yazar Adý], Yazarlar.soyad as [Yazar Soyadý],
avg(fiyat) as [Yazarýn Kitaplarýnýn Ortalama Fiyatý] From Kitaplar
INNER JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid
GROUP BY Yazarlar.ad, Yazarlar.soyad ORDER BY [Yazarýn Kitaplarýnýn Ortalama Fiyatý] DESC

	-- 28) En çok kitaba sahip olan yazarýn kitaplarýnýn ortalama fiyatý
SELECT Top 1 Yazarlar.ad as [Yazar Adý], Yazarlar.soyad as [Yazar Soyadý], count(sid) as [Kitap Sayýsý],
round(avg(fiyat), 2) as [Yazarýn Kitaplarýnýn Ortalama Fiyatý] From Kitaplar
INNER JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid
GROUP BY Yazarlar.ad, Yazarlar.soyad ORDER BY [Kitap Sayýsý] DESC

	-- 29) Kitaplarýn stok sayýsýna göre sýralanmasý
SELECT Kitaplar.ad as [Kitap Adý], Stok.adet as [Adet] From Kitaplar
JOIN Stok ON Kitaplar.sid = Stok.sid Group by adet, ad


	-- 30)Her bir tabloda kaç adet kayýt olduðunu gösteren sorgu.
	SELECT TOP 20 (SCHEMA_NAME(A.schema_id) + '.'+A.Name) AS TableName
	,SUM(B.rows) AS RecordCount
	FROM sys.objects A
	INNER JOIN sys.partitions B ON A.object_id=B.object_id
	WHERE A.type='U'
	GROUP BY A.schema_id,A.Name

	--29) Stoklarý 0 ile 100 arasýnda random sayýlarla güncelleyen update ifadesi. CRYPT_GEN_RANDOM() fonksiyonu kullanýlmýþtýr.
	UPDATE Stok
SET adet = cast(CRYPT_GEN_RANDOM(1) as bigint) % 100




--Triggerlar

--Bir kitap giriþi yapýldýðýnda stok tablosuna 1 adet o kitaptan ekleyen trigger.
CREATE Trigger StokGir
ON dbo.Kitaplar
AFTER INSERT
AS 
BEGIN
	INSERT INTO Stok(sid, adet) VALUES ((select sid from inserted), 1)
END

--Kitap giriþi yaparken eðer bir yazar var ise kitap o yazara atanýr yazar yok ise yazarlar tablosuna yazar kaydedilir.
Create Trigger YazarEkle
on dbo.Kitaplar
AFTER INSERT
AS 
BEGIN
	declare @yid int
	declare @ad varchar(30)
	select @yid = yid from inserted
	select @ad = yazar from inserted
	IF exists (select ad from yazarlar where ad = @ad)
 BEGIN
     UPDATE Yazarlar set yid = @yid where yid = @yid
 END
 ELSE
 BEGIN
    INSERT INTO Yazarlar(yid, ad) VALUES (@yid,@ad)
 END
END

--Kitap giriþi yapýlýrken ilgili yayýnevi varsa kitap o yayýnevine atanýr eðer yoksa yayýnevi tablosuna yeni yayýnevi kaydedilir.
Create Trigger YayýneviEkle
on dbo.Kitaplar
AFTER INSERT
AS
BEGIN
	declare @yno int
	declare @ad varchar(30)
	select @yno = yno from inserted
	select @ad = yayýnevi from inserted
	IF exists (select ad from Yayinevleri where ad = @ad)
 BEGIN
     UPDATE Yayinevleri set yno = @yno where yno = @yno
 END
 ELSE
 BEGIN
     INSERT INTO Yayinevleri(yno, ad) VALUES (@yno, @ad)
 END
END
