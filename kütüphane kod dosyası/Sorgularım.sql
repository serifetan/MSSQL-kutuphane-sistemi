
-- 1) Ad� 'ay�e' olan m��terileri, m��teriler tablosundan b�t�n kolonlar�yla �a��ran sorgu.
 SELECT * FROM Musteriler WHERE ad='ay�e'

-- 2) 'a' ve 'z' ile biten �ehirleri getiren sorgu
SELECT * FROM Musteriler WHERE sehir LIKE '%a'
select * from Yazarlar where ad like '%z'

-- 3) Soyad� u ile ba�layanlar� getiren sorgu
SELECT * FROM Musteriler WHERE soyad LIKE 'u%'

-- 4) Ad�n�n ikinci harfi a olan� getiren sorgu
SELECT * FROM Musteriler WHERE ad like '_a%'

-- 5) Ad� y�kselen alfabetik s�raya g�re listeleyen sorgu
SELECT * FROM Musteriler ORDER BY Ad ASC
SELECT * FROM Uyeler ORDER BY uyead ASC

-- 6) Ad� azalan alfabetik s�raya g�re listeleyen sorgu
SELECT * FROM Musteriler ORDER BY Ad DESC

-- 7) Kitaplar tablosundaki sat�r say�s�n� sorgulamak i�in count() fonksiyonu kullan�lm��t�r.
select count(*) as [Kitaplar Tablosu Sat�r Say�s�] from Kitaplar
-- 8) distinct komutu kullan�larak ayn� yazar sadece 1 kere g�sterilmi�tir.
select distinct yazar from kitaplar
select yazar from Kitaplar

--9)Fiyat� 30'dan y�ksek olanlar� getiren sorgu.
SELECT * FROM Kitaplar WHERE fiyat > 30

--Uyeler tablosundan uid'si 3 olan kayd� siler.
DELETE FROM Uyeler WHERE uid = 3

 --10) Fiyat aral���yla y�kselen fiyata g�re listeleme sorgusu.
 SELECT ISBN, ad as [Kitap Ad�], yazar as [Yazar Ad� ve Soyad�], yay�nevi as [Yay�nevi �smi], 
 ytarihi as [Yay�n Tarihi], fiyat as [Fiyat] FROM Kitaplar WHERE fiyat BETWEEN 14.99 AND 20 ORDER BY fiyat ASC

  --Kitaplar tablosunun yay�nevi kolonunda bo�luklu girilen de�erleri k�rpmak i�in kullan�lan fonksiyonlar (LTRIM VE RTRIM)
  update kitaplar
set yay�nevi= LTRIM(RTRIM(yay�nevi))

--11) Bir kitab�n, yay�nevi tablosundan bir yay�neviyle ba�lant�s� olup olmad���n� kontrol eden sorgu.
SELECT  ISBN, Kitaplar.ad as [Kitap Ad�], yazar as [Yazar Ad� ve Soyad�], Yayinevleri.ad as [Yay�nevi �smi],
 ytarihi as [Yay�n Tarihi], fiyat as [Fiyat] FROM Kitaplar JOIN Yayinevleri ON Kitaplar.yno = Yayinevleri.yno
WHERE EXISTS 
  (SELECT *
   FROM Yayinevleri
   WHERE Kitaplar.yno = Yayinevleri.yno);

   /* 12) Kitaplar tablosu kategoriler ve kategori_bilgi tablosuna ba�lanm��t�r. Kategori tablosunda tan�mlanan kategoriler
	 kategori_bilgi tablosundan ISBN yard�m�yla kitaplara atanm��t�r. */
SELECT Kitaplar.ad as [Kitap Ad�], Kategoriler.ad as [Kategorisi], Kategoriler.bilgi as [Alt Kategorisi],
Yazarlar.ad as [Yazar Ad�], Yazarlar.soyad as [Yazar Soyad�]
FROM Kitaplar
JOIN Kategori_bilgi ON Kitaplar.ISBN = Kategori_bilgi.ISBN
JOIN Kategoriler ON Kategori_bilgi.kid = Kategoriler.kid
JOIN Yazarlar ON Yazarlar.yid = Kitaplar.yid

	--13)Yazar tablosuna tan�mlanm�� yazarlara atanan kitaplar� listeleyen sorgu.
SELECT Yazarlar.ad as [Yazar Ad�], Yazarlar.soyad as [Yazar Soyad�], 
Kitaplar.ad as [Kitaplar�], 
CONVERT(varchar, Kitaplar.ytarihi, 103) as [Yay�n Tarihi]
FROM Kitaplar JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid ORDER BY [Yazar Ad�] ASC

-- Yazarlar tablosundaki ad kolonunda bo�luklu kalan isimleri k�rpan fonksiyon kullan�m�
	update Yazarlar
set ad = LTRIM(RTRIM(ad))

-- Kitaplar tablosundaki yazar kolonunda bo�luklu kalan girdileri k�rpan fonksiyon
	update Kitaplar
set yazar = LTRIM(RTRIM(yazar))


	-- 14) Hangi �yeye hangi kitab�n �d�n� verildi�ini g�steren sorgu
SELECT uyead as [�ye ad�], uyesoyad as [�ye Soyad�], ad as [Kitap Ad�], yazar as [Yazar] FROM
Uyeler 
JOIN Odunc_bilgi ON Uyeler.uid = Odunc_bilgi.uid
JOIN Kitaplar ON Kitaplar.ISBN = Odunc_bilgi.ISBN

	-- 15) Kategori_bilgi sorgusu isbn ile bir kitab�n hangi kategori numaras�yla ba�lant�l� oldu�unu g�sterir.
SELECT*FROM Kategori_bilgi
	-- 16) Kategorilerle ilgili bilgi veren sorgu
SELECT * FROM Kategoriler

	--17) M��teri tablosundaki kay�tlar� listeleyen sorgu
SELECT mid as [M��teri Numaras�], ad as [�sim], soyad as [Soyisim], 
	sehir as [�ehir], ilce as [�l�e], mahalle as [Mahalle], pkodu as [Posta Kodu] 
	FROM Musteriler

	--18) Siparis_bilgi tablosuna girilen kay�t sayesinde olu�an sipari�ler bir m��teriye kitap ismi ile atanmaktad�r.
	--M��teri, sipari� ve kitap tablosunu birle�tiren sorgu �eklinde yaz�lm��t�r.
SELECT Siparis_bilgi.spid as [Sipari� Numaras�], 
	Musteriler.ad as [�sim], Musteriler.soyad as [Soyisim],
	Musteriler.sehir as [G�nderim �ehri], Musteriler.ilce as [�l�esi],
	CONVERT(varchar, Siparis_bilgi.iletimtarih, 103) as [G�nderim Tarihi],
	Siparis_bilgi.takipno as [Takip Numaras�],
	Kitaplar.ISBN as [ISBN], Kitaplar.ad as [Kitap Ad�],
	Kitaplar.yazar as [Yazar], Kitaplar.fiyat as [Fiyat]
	FROM Musteriler
	JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
	JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN ORDER BY iletimtarih ASC

	
	--19) Bir kampanya bir m��teriye kampanya_bilgi tablosuyla atanmaktad�r ve siparis_bilgi tablosuyla ilgili sipari� ve kitap ismi ba�lant�l� sorguyla g�sterilmektedir.
SELECT Kampanyalar.kno as [Kampanya Numaras�], Kitaplar.ad as [Kitap Ad�], 
	Musteriler.ad as [M��teri Ad�],
	Musteriler.soyad as [M��teri Soyad�], Kampanyalar.ad as [Kampanya Ad�],
	Kampanyalar.bilgi as [Kampanya ��eri�i], Kampanyalar.bastarih as [Kampanya Ba�lang�c�],
	Kampanyalar.bittarih as [Kampanya Biti�i] From Kampanyalar
	JOIN Kampanya_bilgi ON Kampanyalar.kno = Kampanya_bilgi.kno
	JOIN Musteriler ON Musteriler.mid = Kampanya_bilgi.mid
	JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
	JOIN Kitaplar ON Siparis_bilgi.ISBN = Kitaplar.ISBN ORDER BY [M��teri Ad�] asc

	--20) Bir kitab�n atand��� yazar ve yay�nevi sorgusu. Bu sorguda kitaplar tablosu, yay�nevi ve yazarlar tablosu ile ba�lanm��t�r.
	SELECT Kitaplar.ad as [Kitap Ad�], Yazarlar.ad as [Yazar Ad�], Yayinevleri.ad as [Yay�nevi]
	FROM Kitaplar 
	JOIN Yayinevleri ON Kitaplar.yno = Yayinevleri.yno
	JOIN Yazarlar ON Yazarlar.yid = Kitaplar.yid

	-- 21) Kitaplar�n stok id'sini ve adetini g�steren sorgu.
	SELECT Kitaplar.ad as [Kitap Ad�], Kitaplar.yazar as�[Yazar Ad�], Kitaplar.sid as [Stok ID], Stok.adet as [Adet]
FROM Kitaplar 
JOIN Stok ON Kitaplar.sid = Stok.sid 

	-- Check constraint'i ile fiyat�n eksi girilmesi engellenir
	ALTER Table Kitaplar
	ADD Check (fiyat > 0)

	--Veri analizi

	-- 22) Group by kullan�m�, AVG()(ortalama) ve ROUND()(yuvarlama) fonksiyonu kullan�m�. Yay�nevlerinin fiyatlar�n�n ortalamas�n� alan sorgu. (Yayinevleri tablosuyla ba�lant�l� �ekilde.)
SELECT Yayinevleri.ad as�[Yay�nevi Ad�], ROUND(AVG(Kitaplar.fiyat), 0) as [Ortalama Fiyat(TL)] FROM Kitaplar
JOIN Yayinevleri ON Yayinevleri.yno = Kitaplar.yno GROUP BY Yayinevleri.ad ORDER BY [Ortalama Fiyat(TL)] 

	-- 23) Yazara g�re gruplay�p yazar�n t�m kitaplar�n�n fiyatlar�n�n ortalamas�n� alan sorgu. Bu sayede bir yazar�n fiyatland�rmas�na eri�ebiliriz.
SELECT yazar as [Yazar], ROUND(AVG(fiyat), 0) as [Ortalama Fiyat(TL)] 
FROM Kitaplar GROUP BY yazar ORDER BY [Ortalama Fiyat(TL)] asc

 
	-- 24) Sat��lar�n toplam tutar� hakk�nda bilgi veren sorgu
SELECT sum(Kitaplar.fiyat) as [M��terilerin harcad��� toplam tutar] FROM Musteriler
JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN

	--25) En y�ksek fiyatl� sat���n tutar�n� g�steren sorgu.
SELECT max(Kitaplar.fiyat) as [En y�ksek fiyattan yap�lan sat��], Kitaplar.ad as [Kitap Ad�], Kitaplar.yazar as [Yazar Ad�] 
FROM Siparis_bilgi
INNER JOIN Musteriler ON Musteriler.mid = Siparis_bilgi.id
INNER JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN  
group by Kitaplar.ad, Kitaplar.yazar, Kitaplar.fiyat order by fiyat desc
OFFSET 0 ROWS
FETCH FIRST 1 ROWS ONLY


	--26)Yazara g�re grupland�r�p o yazar�n en d���k fiyatl� sat�� tutar�n� g�steren sorgu.
SELECT min(Kitaplar.fiyat) as [En d���k fiyattan yap�lan sat��], Kitaplar.yazar as [Yazar] FROM Musteriler
JOIN Siparis_bilgi ON Musteriler.mid = Siparis_bilgi.id
JOIN Kitaplar ON Kitaplar.ISBN = Siparis_bilgi.ISBN Group by yazar 

	-- 27)Kitaplar� en y�ksek ortalama fiyata sahip yazar sorgusu
SELECT Top 1 Yazarlar.ad as [Yazar Ad�], Yazarlar.soyad as [Yazar Soyad�],
avg(fiyat) as [Yazar�n Kitaplar�n�n Ortalama Fiyat�] From Kitaplar
INNER JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid
GROUP BY Yazarlar.ad, Yazarlar.soyad ORDER BY [Yazar�n Kitaplar�n�n Ortalama Fiyat�] DESC

	-- 28) En �ok kitaba sahip olan yazar�n kitaplar�n�n ortalama fiyat�
SELECT Top 1 Yazarlar.ad as [Yazar Ad�], Yazarlar.soyad as [Yazar Soyad�], count(sid) as [Kitap Say�s�],
round(avg(fiyat), 2) as [Yazar�n Kitaplar�n�n Ortalama Fiyat�] From Kitaplar
INNER JOIN Yazarlar ON Kitaplar.yid = Yazarlar.yid
GROUP BY Yazarlar.ad, Yazarlar.soyad ORDER BY [Kitap Say�s�] DESC

	-- 29) Kitaplar�n stok say�s�na g�re s�ralanmas�
SELECT Kitaplar.ad as [Kitap Ad�], Stok.adet as [Adet] From Kitaplar
JOIN Stok ON Kitaplar.sid = Stok.sid Group by adet, ad


	-- 30)Her bir tabloda ka� adet kay�t oldu�unu g�steren sorgu.
	SELECT TOP 20 (SCHEMA_NAME(A.schema_id) + '.'+A.Name) AS TableName
	,SUM(B.rows) AS RecordCount
	FROM sys.objects A
	INNER JOIN sys.partitions B ON A.object_id=B.object_id
	WHERE A.type='U'
	GROUP BY A.schema_id,A.Name

	--29) Stoklar� 0 ile 100 aras�nda random say�larla g�ncelleyen update ifadesi. CRYPT_GEN_RANDOM() fonksiyonu kullan�lm��t�r.
	UPDATE Stok
SET adet = cast(CRYPT_GEN_RANDOM(1) as bigint) % 100




--Triggerlar

--Bir kitap giri�i yap�ld���nda stok tablosuna 1 adet o kitaptan ekleyen trigger.
CREATE Trigger StokGir
ON dbo.Kitaplar
AFTER INSERT
AS 
BEGIN
	INSERT INTO Stok(sid, adet) VALUES ((select sid from inserted), 1)
END

--Kitap giri�i yaparken e�er bir yazar var ise kitap o yazara atan�r yazar yok ise yazarlar tablosuna yazar kaydedilir.
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

--Kitap giri�i yap�l�rken ilgili yay�nevi varsa kitap o yay�nevine atan�r e�er yoksa yay�nevi tablosuna yeni yay�nevi kaydedilir.
Create Trigger Yay�neviEkle
on dbo.Kitaplar
AFTER INSERT
AS
BEGIN
	declare @yno int
	declare @ad varchar(30)
	select @yno = yno from inserted
	select @ad = yay�nevi from inserted
	IF exists (select ad from Yayinevleri where ad = @ad)
 BEGIN
     UPDATE Yayinevleri set yno = @yno where yno = @yno
 END
 ELSE
 BEGIN
     INSERT INTO Yayinevleri(yno, ad) VALUES (@yno, @ad)
 END
END
