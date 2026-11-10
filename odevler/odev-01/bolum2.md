# Bölüm 2: Proje Senaryosu ve Kavramsal Tasarım

## 1. Proje Amacı
Bu projenin amacı, bir üniversite ortamında öğrencilerin, derslerin, akademisyenlerin ve not kayıtlarının düzenli bir şekilde takip edilebilmesini sağlayan ilişkisel bir **Öğrenci Bilgi Sistemi (OBS)** veritabanı tasarlamaktır.

## 2. Varlıklar ve Nitelikleri (Entities & Attributes)
* **Ogrenci:**
  * `ogrenci_no` (Primary Key)
  * `ad`
  * `soyad`
  * `bolum`
* **Ders:**
  * `ders_kodu` (Primary Key)
  * `ders_adi`
  * `kredi`
  * `akts`
* **Akademisyen:**
  * `akademisyen_id` (Primary Key)
  * `ad`
  * `soyad`
  * `unvan`
* **Notlar (Kayıt / İlişki Tablosu):**
  * `kayit_id` (Primary Key)
  * `ogrenci_no` (Foreign Key)
  * `ders_kodu` (Foreign Key)
  * `vize`
  * `final`

## 3. İlişki Yapıları (Relationships)
* **Öğrenci ile Ders Arasındaki İlişki (M:N - Çoka Çok):** Bir öğrenci birden fazla ders alabilir; bir derse de birden fazla öğrenci kayıt olabilir. Bu ilişki `Notlar` ara tablosu ile bire-çoğa dönüştürülmüştür.
* **Akademisyen ile Ders Arasındaki İlişki (1:N - Bire Çok):** Bir akademisyen birden fazla ders verebilir, ancak bir ders genellikle bir akademisyen tarafından yürütülür.
