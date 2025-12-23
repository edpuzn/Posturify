
# Posturify - AI Powered Fitness Assistant 🏋️‍♂️

![Flutter](https://img.shields.io/badge/Flutter-3.13+-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.0+-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![ML Kit](https://img.shields.io/badge/Google_ML_Kit-Vision-FF6F00?style=for-the-badge&logo=google&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-iOS_%7C_Android-9cf?style=for-the-badge)

**Posturify**, egzersiz formunuzu gerçek zamanlı olarak analiz eden, yapay zeka destekli akıllı bir fitness asistanıdır. Gelişmiş görüntü işleme teknolojileri kullanarak, antrenman sırasında duruşunuzu düzeltir ve sesli geri bildirimlerle sizi motive eder.

---

## 📱 Ekran Görüntüleri

| **Ana Sayfa** | **Egzersiz Seçimi** | **Canlı Analiz** |
|:---:|:---:|:---:|
| <img src="screenshots/home.png" width="250"> | <img src="screenshots/selection.png" width="250"> | <img src="screenshots/action_demo.png" width="250"> |
| *Kişiselleştirilmiş akış* | *Geniş hareket kütüphanesi* | *Gerçek zamanlı form analizi* |

| **Detaylı İstatistikler** | **Gelişmiş Profil** |
|:---:|:---:|
| <img src="screenshots/history.png" width="250"> | <img src="screenshots/profile.png" width="250"> |
| *Haftalık gelişim takibi* | *BMI ve seviye durumu* |

---

## ✨ Temel Özellikler

*   **🤖 AI Destekli Form Analizi:** Google ML Kit Pose Detection ile vücut noktalarınızı saniyede 30 kare hızında takip eder.
*   **🗣️ Sesli Asistan (TTS):** Hatalı duruşlarda ("Sırtını düz tut", "Daha aşağı in") anlık sesli uyarı verir.
*   **📊 Akıllı Sayaç:** Sadece doğru formda yapılan tekrarları sayar. Yarım veya hatalı hareketler sayılmaz.
*   **🏆 Oyunlaştırma (Gamification):** Egzersiz yaptıkça XP kazanın, seviye atlayın ve rozetlerin kilidini açın.
*   **📈 Gelişim Takibi:** Hive veritabanı ile tüm antrenman geçmişiniz, rekorlarınız ve vücut kitle indeksiniz (BMI) cihazınızda güvenle saklanır.
*   **🌓 Dinamik Tema:** Otomatik karanlık/aydınlık mod desteği.

---

## 🛠️ Teknik Altyapı

Bu proje, modern Flutter mimarisi ve best-practice'ler kullanılarak geliştirilmiştir.

*   **Framework:** Flutter & Dart
*   **Yapay Zeka (AI):** `google_mlkit_pose_detection` (Base model ile optimize edilmiş performans)
*   **State Management:** `ValueNotifier` & Singleton Services (Hafif ve hızlı)
*   **Veritabanı:** `hive` (NoSQL, ultra hızlı yerel depolama)
*   **Navigasyon:** `auto_route` (Tip güvenli yönlendirme)
*   **Medya:** `camera` (Görüntü akışı), `flutter_tts` (Metin okuma)

---

## 🚀 Kurulum ve Çalıştırma

Projeyi yerel ortamınızda çalıştırmak için aşağıdaki adımları izleyin:

### Gereksinimler
*   Flutter SDK (3.0+)
*   Xcode (iOS için) veya Android Studio
*   CocoaPods (iOS bağımlılıkları için)

### Adımlar

1.  **Depoyu Klonlayın:**
    ```bash
    git clone https://github.com/username/posturify.git
    cd posturify
    ```

2.  **Bağımlılıkları Yükleyin:**
    ```bash
    flutter pub get
    ```

3.  **iOS Kurulumu (Mac Kullanıcıları):**
    ```bash
    cd ios
    pod install --repo-update
    cd ..
    ```
    *Not: Xcode'da Signing & Capabilities sekmesinden kendi Team ID'nizi seçmeyi unutmayın.*

4.  **Uygulamayı Çalıştırın:**
    *   **Debug Mod:**
        ```bash
        flutter run
        ```
    *   **Release Mod (Önerilen - Daha Hızlı):**
        ```bash
        flutter run --release
        ```

---

## 🤝 Katkıda Bulunma

Hataları bildirmek veya yeni özellikler önermek için lütfen [Issues](issues) sayfasını kullanın. Pull Request'ler memnuniyetle karşılanır!

---

## 📄 Lisans

Bu proje MIT Lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasına bakınız.
