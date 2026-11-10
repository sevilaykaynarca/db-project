# bolum1.py - Öğrenci Bilgi Sistemi (OBS) Temel Sınıflar ve Nesne Yönetimi

class Ogrenci:
    def __init__(self, ogrenci_no, ad, soyad, bolum):
        self.ogrenci_no = ogrenci_no
        self.ad = ad
        self.soyad = soyad
        self.bolum = bolum
        self.alinan_dersler = []

    def ders_ekle(self, ders):
        self.alinan_dersler.append(ders)
        print(f"{self.ad} {self.soyad}, '{ders.ders_adi}' dersine başarıyla kaydedildi.")

    def bilgi_goster(self):
        print(f"\n--- Öğrenci Bilgileri ---")
        print(f"Öğrenci No: {self.ogrenci_no}")
        print(f"Ad Soyad: {self.ad} {self.soyad}")
        print(f"Bölüm: {self.bolum}")
        print("Alınan Dersler:")
        if not self.alinan_dersler:
            print("  Henüz ders seçilmemiş.")
        else:
            for ders in self.alinan_dersler:
                print(f"  - {ders.ders_kodu}: {ders.ders_adi} ({ders.akts} AKTS)")


class Ders:
    def __init__(self, ders_kodu, ders_adi, kredi, akts):
        self.ders_kodu = ders_kodu
        self.ders_adi = ders_adi
        self.kredi = kredi
        self.akts = akts


# Test / Örnek Kullanım Alanı
if __name__ == "__main__":
    # Örnek dersler oluşturuyoruz
    mat101 = Ders("MAT101", "Matematik I", 4, 6)
    bil381 = Ders("BİM381", "Veritabanı Yönetim Sistemleri", 3, 5)

    # Örnek öğrenci oluşturuyoruz (Kendi bilgilerinden esinlenebilirsin!)
    ogrenci1 = Ogrenci("202502009070", "Sevilay", "Kaynarca", "Yönetim Bilişim Sistemleri")

    # Öğrenciye ders ekleme işlemleri
    ogrenci1.ders_ekle(mat101)
    ogrenci1.ders_ekle(bil381)

    # Bilgileri ekrana yazdırıyoruz
    ogrenci1.bilgi_goster()
