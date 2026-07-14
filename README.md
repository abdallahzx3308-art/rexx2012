# REX - تطبيق مشاركة الفيديوهات 🎥

تطبيق Flutter حديث لمشاركة ومشاهدة الفيديوهات مع ميزات تفاعلية وسهلة الاستخدام.

## ✨ الميزات الرئيسية

### 📱 المصادقة والحسابات
- ✅ تسجيل حساب جديد
- ✅ تسجيل دخول آمن
- ✅ تعديل الملف الشخصي
- ✅ صورة الملف الشخصي

### 🎬 إدارة الفيديوهات
- ✅ تحميل فيديوهات جديدة
- ✅ عرض تغذية الفيديوهات
- ✅ البحث عن الفيديوهات
- ✅ حذف الفيديوهات الخاصة بك
- ✅ تتبع المشاهدات

### 💬 التفاعل الاجتماعي
- ✅ الإعجاب بالفيديوهات (مع تتبع دقيق)
- ✅ التعليق على الفيديوهات
- ✅ عرض عدد الإعجابات والتعليقات
- ✅ مشاركة الفيديوهات

### 🔔 الإشعارات والرسائل
- ✅ نظام الإشعارات
- ✅ الرسائل بين المستخدمين
- ✅ المتابعة والمتابعون

## 🛠️ المتطلبات

- **Flutter SDK:** >= 3.0.0
- **Dart:** >= 3.0.0
- **Android:** API 21+
- **iOS:** iOS 11+

## 📦 التبعيات الرئيسية

```yaml
firebase_core: ^3.8.0           # Firebase Core
cloud_firestore: ^5.5.0         # Firestore Database
firebase_auth: ^5.3.3            # Firebase Authentication
firebase_storage: ^12.3.6        # Cloud Storage
video_player: ^2.8.0             # Video Playback
image_picker: ^0.8.0             # Image/Video Selection
file_picker: ^5.0.0              # File Selection
```

## 🚀 البدء السريع

### 1. استنساخ المستودع
```bash
git clone https://github.com/abdallahzx3308-art/rexx2012.git
cd rexx2012
```

### 2. تثبيت التبعيات
```bash
flutter pub get
```

### 3. إعداد Firebase
1. انشئ مشروع على [Firebase Console](https://console.firebase.google.com)
2. أضف تطبيق Android و iOS
3. حمل ملف `google-services.json` للأندرويد
4. حمل ملف `GoogleService-Info.plist` للآيفون
5. ضعهما في المسارات الصحيحة

### 4. تشغيل التطبيق
```bash
flutter run
```

## 📁 هيكل المشروع

```
lib/
├── main.dart                    # نقطة الدخول الرئيسية
├── screens/                     # شاشات التطبيق
│   ├── login_screen.dart       # شاشة تسجيل الدخول
│   ├── register_screen.dart    # شاشة التسجيل
│   ├── video_feed_screen.dart  # تغذية الفيديوهات
│   ├── upload_screen.dart      # رفع الفيديوهات
│   ├── profile_screen.dart     # الملف الشخصي
│   ├── search_screen.dart      # البحث
│   ├── messages_screen.dart    # الرسائل
│   ├── notifications_screen.dart # الإشعارات
│   ├── home_screen.dart        # الشاشة الرئيسية
│   ├── settings_screen.dart    # الإعدادات
│   └── navigation_screen.dart  # التنقل الرئيسي
├── services/                    # خدمات Business Logic
│   ├── auth_service.dart       # خدمة المصادقة
│   ├── video_service.dart      # خدمة الفيديوهات
│   ├── like_service.dart       # خدمة الإعجابات
│   ├── comment_service.dart    # خدمة التعليقات
│   └── follow_service.dart     # خدمة المتابعة
├── models/                      # نماذج البيانات
│   ├── user_model.dart         # نموذج المستخدم
│   ├── video_model.dart        # نموذج الفيديو
│   └── comment_model.dart      # نموذج التعليق
└── widgets/                     # المكونات المعاد استخدامها
    └── video_card.dart         # بطاقة الفيديو

android/                         # ملفات Android الأصلية
ios/                             # ملفات iOS الأصلية
pubspec.yaml                     # تكوين المشروع
```

## 🔄 تدفق البيانات

```
UI (Screens)
    ↓
Services (Business Logic)
    ↓
Firebase (Backend)
```

### مثال: تحميل الفيديو

1. المستخدم يختار فيديو من معرض الجهاز
2. `UploadScreen` يرسل الفيديو إلى `VideoService`
3. `VideoService` يحمل الفيديو على `Firebase Storage`
4. يحفظ البيانات الوصفية في `Firestore`
5. يتم إظهار رسالة نجاح للمستخدم

## 🎯 أهم التحسينات الأخيرة

### ⚡ تحسينات الأداء
- ✅ إدارة أفضل للذاكرة في تشغيل الفيديوهات
- ✅ تنظيف الموارد عند التبديل بين الفيديوهات
- ✅ معالجة أفضل للأخطاء

### 🐛 إصلاح الأخطاء
- ✅ تحسين نظام تتبع الإعجابات
- ✅ معالجة استثناءات البحث الفارغ
- ✅ تحسين رسائل الخطأ

### 🎨 تحسينات الواجهة
- ✅ تصميم أفضل للملف الشخصي
- ✅ إضافة زر اختيار الصورة الشخصية
- ✅ تحسين عرض معلومات المستخدم

### 📚 التوثيق
- ✅ إضافة README شامل
- ✅ شرح هيكل المشروع
- ✅ تعليمات الإعداد والتشغيل

## 🔐 الأمان

- ✅ مصادقة Firebase آمنة
- ✅ قواعد Firestore محمية
- ✅ تشفير بيانات المستخدم
- ✅ تحقق من الصلاحيات قبل الوصول

## 📝 قواعد Firestore

```javascript
// مثال على قاعدة تحقق بسيطة
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    // المستخدمون - يمكن لكل مستخدم تعديل بياناته فقط
    match /users/{userId} {
      allow read: if request.auth != null;
      allow write: if request.auth.uid == userId;
    }

    // الفيديوهات - قراءة للجميع، كتابة للمالك
    match /videos/{videoId} {
      allow read: if request.auth != null;
      allow write: if request.auth.uid == resource.data.uid;
    }
  }
}
```

## 🧪 الاختبار

```bash
# تشغيل الاختبارات
flutter test

# بناء التطبيق للإنتاج (Android)
flutter build apk --release

# بناء التطبيق للإنتاج (iOS)
flutter build ios --release
```

## 📊 إحصائيات المشروع

- **عدد الملفات:** ~15 ملف Dart
- **عدد الأسطر:** ~3000+ سطر
- **الحجم:** ~1.5 MB (بدون البيانات)

## 🤝 المساهمة

نرحب بالمساهمات! يرجى:

1. عمل Fork للمستودع
2. إنشاء فرع جديد (`git checkout -b feature/AmazingFeature`)
3. Commit التغييرات (`git commit -m 'Add AmazingFeature'`)
4. Push إلى الفرع (`git push origin feature/AmazingFeature`)
5. فتح Pull Request

## 📄 الترخيص

هذا المشروع مرخص تحت [MIT License](LICENSE)

## 📧 التواصل

- **المطور:** abdallahzx3308-art
- **البريد:** abdallahzx3308@gmail.com
- **GitHub:** https://github.com/abdallahzx3308-art

## 🙏 شكر وتقدير

شكراً لاستخدام REX! نتمنى أن تستمتع بتجربة التطبيق. إذا واجهت أي مشاكل، يرجى فتح issue على GitHub.

---

**آخر تحديث:** 2026-07-14
**الإصدار:** 1.0.0

🌟 إذا أعجبك المشروع، يرجى إعطاؤه نجمة! ⭐
