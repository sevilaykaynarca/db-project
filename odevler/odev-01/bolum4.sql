-- bolum4.sql - Örnek Veri Ekleme (INSERT) ve Test Sorguları

-- 1. Akademisyenler Ekliyoruz
INSERT INTO Akademisyen (akademisyen_id, ad, soyad, unvan, bolum) VALUES
(1, 'Canan', 'Arslan', 'Öğr. Gör.', 'Yönetim Bilişim Sistemleri'),
(2, 'Sezgin', 'Gezgin', 'Doç. Dr.', 'Bilgisayar Mühendisliği');

-- 2. Öğrenciler Ekliyoruz
INSERT INTO Ogrenci (ogrenci_no, ad, soyad, bolum, kayit_yili) VALUES
('202502009070', 'Sevilay', 'Kaynarca', 'Yönetim Bilişim Sistemleri', 2025),
('202502009085', 'Kenan', 'Yıldız', 'Yönetim Bilişim Sistemleri', 2025);

-- 3. Dersler Ekliyoruz
INSERT INTO Ders (ders_kodu, ders_adi, kredi, akts, akademisyen_id) VALUES
('BİM381', 'Veritabanı Yönetim Sistemleri', 3, 5, 1),
('MAT101', 'Matematik I', 4, 6, 2);

-- 4. Notlar / Kayıtlar Ekliyoruz
INSERT INTO Notlar (kayit_id, ogrenci_no, ders_kodu, vize, final) VALUES
(1, '202502009070', 'BİM381', 85, 90),
(2, '202502009070', 'MAT101', 70, 75),
(3, '202502009085', 'BİM381', 60, 65);

-- Örnek Test Sorgusu: Öğrencilerin aldığı dersleri ve hocalarını listeleyen JOIN sorgusu
SELECT o.ad, o.soyad, d.ders_adi, a.ad AS hoca_ad, a.soyad AS hoca_soyad, n.vize, n.final
FROM Notlar n
JOIN Ogrenci o ON n.ogrenci_no = o.ogrenci_no
JOIN Ders d ON n.ders_kodu = d.ders_kodu
JOIN Akademisyen a ON d.akademisyen_id = a.akademisyen_id;
