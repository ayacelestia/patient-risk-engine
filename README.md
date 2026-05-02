# 🩺 Patient Risk Engine (V1.0) - by Ali Yiğit Aytin

Bu proje, **Klinik Karar Destek Sistemleri (CDSS)** üzerine yürüttüğüm algoritma optimizasyonu ve yazılım mimarisi çalışmalarımın ilk prototipidir. 

## 📝 Proje Amacı
Tıbbi karar protokollerini, en az hata payı ve en yüksek verimlilikle dijital sürece aktarmak. Bu çalışmada, bir mühendislik disiplini olarak "akış şeması sadeleştirme" (flowchart optimization) teknikleri üzerine odaklanılmıştır.

## 🚀 Teknik Özellikler
*   **Etkileşimli Terminal:** Kullanıcıdan alınan dinamik verilerle (yaş, tansiyon, yaşam tarzı) anlık analiz yapar.
*   **Modüler Puanlama:** Parametreleri ağırlıklı bir algoritma ile işleyerek sayısal bir risk skoru üretir.
*   **Döngüsel Yapı:** `while` döngüsü sayesinde, programı kapatmadan ardışık olarak yeni hasta verileri girilmesine imkan tanır.

## 🛠️ Nasıl Çalıştırılır?
1. Bilgisayarınızda **Octave** veya **MATLAB** yüklü olduğundan emin olun.
2. `analiz.m` dosyasının bulunduğu dizinde terminalinizi açın.
3. Komut satırına şu komutu girerek sistemi başlatın:
```octave
analiz
```

# 📈 Gelecek Planları (Roadmap)
Bu proje minimal olma amacıyla tasarlandı. Sadece en temel işlevi yerine getiren bir prototip. Ancak üstüne koymak için yapılabilecekler arasında:

- Error Handling: Kullanıcı tarafından girilen geçersiz (numerik olmayan) verileri filtreleyen kontrol blokları.
- Data Logging: Analiz edilen verileri bir dizi (array) içinde saklayarak seans sonunda toplu rapor sunma özelliği.
- Web Entegrasyonu: Algoritmanın JavaScript platformuna taşınarak modern bir web arayüzü ile sunulması gibi şeyler bulunmaktadır.

