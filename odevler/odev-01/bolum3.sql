-- bolum3.sql - Öğrenci Bilgi Sistemi Veritabanı Tablo Oluşturma Scripti

-- 1. Akademisyen Tablosu
CREATE TABLE Akademisyen (
    akademisyen_id INT PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    unvan VARCHAR(30),
    bolum VARCHAR(50)
);

-- 2. Öğrenci Tablosu
CREATE TABLE Ogrenci (
    ogrenci_no VARCHAR(20) PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    soyad VARCHAR(50) NOT NULL,
    bolum VARCHAR(50),
    kayit_yili INT
);

-- 3. Ders Tablosu
CREATE TABLE Ders (
    ders_kodu VARCHAR(10) PRIMARY KEY,
    ders_adi VARCHAR(100) NOT NULL,
    kredi INT,
    akts INT,
    akademisyen_id INT,
    FOREIGN KEY (akademisyen_id) REFERENCES Akademisyen(akademisyen_id)
);

-- 4. Notlar (Kayıt) İlişki Tablosu
CREATE TABLE Notlar (
    kayit_id INT PRIMARY KEY,
    ogrenci_no VARCHAR(20),
    ders_kodu VARCHAR(10),
    vize INT,
    final INT,
    FOREIGN KEY (ogrenci_no) REFERENCES Ogrenci(ogrenci_no),
    FOREIGN KEY (ders_kodu) REFERENCES Ders(ders_kodu)
);
