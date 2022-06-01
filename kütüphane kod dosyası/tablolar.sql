CREATE TABLE Yazarlar (
yid int,
ad varchar(100) NOT NULL,
soyad varchar(100),
website varchar(30),
CONSTRAINT Pk_Yazarlar PRIMARY KEY(yid));


CREATE TABLE Yayinevleri(
yno int ,
ad varchar(30) NOT NULL,
adres varchar(100),
website varchar(30),
tel varchar(30),
CONSTRAINT Pk_Yayinevleri PRIMARY KEY(yno));


CREATE TABLE Kategoriler(
kid int,
ad varchar(30) NOT NULL,
bilgi varchar(100),
CONSTRAINT PK_Kategoriler PRIMARY KEY(kid));


CREATE TABLE Stok(
sid int,
adet int,
CONSTRAINT Pk_Stok PRIMARY KEY(sid));


CREATE TABLE Uyeler(
uid int,
uyead varchar(30) NOT NULL,
uyesoyad varchar(30) NOT NULL,
eposta varchar(30),
telefon varchar(30),
cinsiyet varchar(30),
CONSTRAINT PK_Uyeler PRIMARY KEY(uid));


CREATE TABLE Musteriler(
mid int,
ad varchar(30) NOT NULL,
soyad varchar(30) NOT NULL,
sehir varchar(30),
ilce varchar(30),
mahalle varchar(30),
pkodu int,
CONSTRAINT PK_Musteriler PRIMARY KEY(mid));


CREATE TABLE Kampanyalar(
kno int,
ad varchar(30) NOT NULL,
bilgi varchar(100) NOT NULL,
bastarih date,
bittarih date,
CONSTRAINT PK_Kampanyalar PRIMARY KEY(kno));


CREATE TABLE Kitaplar(
ISBN varchar(17),
ad varchar(30) NOT NULL,
yazar varchar(30),
yayýnevi varchar(30),
ytarihi date,
aciklama varchar(200),
fiyat float,
sid int,
yid int,
yno int,
CONSTRAINT PK_Kitaplar PRIMARY KEY(ISBN),
CONSTRAINT FK_Kitaplar_Stok FOREIGN KEY(sid) REFERENCES Stok(sid),
CONSTRAINT FK_Kitaplar_Yayinevleri FOREIGN KEY(yno) REFERENCES Yayinevleri(yno),
CONSTRAINT FK_Kitaplar_Yazarlar FOREIGN KEY(yid) REFERENCES Yazarlar(yid));


CREATE TABLE Kampanya_bilgi(
mid int,
kno int,
CONSTRAINT FK_Musteri FOREIGN KEY(mid) REFERENCES Musteriler(mid),
CONSTRAINT FK_Kampanyalar FOREIGN KEY(kno) REFERENCES Kampanyalar(kno));

CREATE TABLE Odunc_bilgi (
uid int,
ISBN varchar(17),
CONSTRAINT FK_Kitaplar FOREIGN KEY(ISBN) REFERENCES Kitaplar(ISBN),
CONSTRAINT FK_Uyeler FOREIGN KEY(uid) REFERENCES Uyeler(uid));


CREATE TABLE Kategori_bilgi(
ISBN varchar(17),
kid int,
CONSTRAINT Fk_Kitap2 FOREIGN KEY(ISBN) REFERENCES Kitaplar(ISBN),
CONSTRAINT Fk_Kategoriler FOREIGN KEY(kid) REFERENCES Kategoriler(kid));


CREATE TABLE Siparis_bilgi(
spid int,
tarih date,
iletimtarih date,
id int,
takipno int,
ISBN varchar(17),
CONSTRAINT Pk_Siparis_bilgi PRIMARY KEY(spid),
CONSTRAINT Fk_Musteriler FOREIGN KEY(id) REFERENCES Musteriler(mid),
CONSTRAINT Fk_Kitap FOREIGN KEY(ISBN) REFERENCES Kitaplar(ISBN));
