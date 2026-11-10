# Öğrenci Bilgi Sistemi (OBS) Proje Raporu

## 1. Projenin Amacı ve Kapsamı
Bu projenin temel amacı; bir üniversite bünyesindeki öğrencilerin, derslerin, akademisyenlerin ve bu unsurlar arasındaki akademik not kayıtlarının ilişkisel bir veritabanı mimarisi ve nesne yönelimli programlama prensipleriyle yönetilmesini sağlayan bir **Öğrenci Bilgi Sistemi (OBS)** geliştirmektir.

## 2. Sistem Mimarisi ve Dosya Yapısı
Proje, modüler bir yapı izlenerek şu dört ana bileşenden oluşturulmuştur:
* **`bolum1.py`**: Sistemdeki temel nesneleri (`Ogrenci`, `Ders`) modelleyen ve nesne yönelimli programlama (OOP) mantığıyla çalışan Python kaynak kodunu barındırır.
* **`bolum2.md`**: Sistemin kavramsal tasarımını, varlıklarını (entities) ve aralarındaki ilişkileri açıklayan tasarım dokümanıdır.
* **`bolum3.sql`**: Veritabanı tablolarının (`Akademisyen`, `Ogrenci`, `Ders`, `Notlar`) DDL (Data Definition Language) komutları ile oluşturulduğu scripttir.
* **`bolum4.sql`**: Tablolara örnek verilerin (`INSERT`) eklendiği ve sistemin çalışabilirliğini test etmek için karmaşık ilişkisel sorguların (`JOIN`) yazıldığı DML scriptidir.

## 3. Veritabanı İlişki Yapıları (Relational Schema)
Projede veri bütünlüğünü sağlamak amacıyla şu ilişkiler kurulmuştur:
* **Akademisyen - Ders (1:N / Bire-Çok):** Bir akademisyen birden fazla ders verebilirken, bir ders tek bir akademisyen tarafından yürütülür.
* **Öğrenci - Ders (M:N / Çoka-Çok):** Öğrenciler birden fazla ders alabilir, dersler ise birden fazla öğrenciyi barındırabilir. Bu ilişki **`Notlar`** ara tablosu aracılığıyla çözülmüştür.

## 4. Sonuç
Geliştirilen bu Öğrenci Bilgi Sistemi; hem yazılım tarafında Python sınıflarıyla esnek bir yapı sunmakta hem de veritabanı tarafında ilişkisel bütünlüğü koruyarak gerçek dünya senaryolarını başarıyla simüle etmektedir.
