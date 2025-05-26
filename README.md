
---

```markdown
# 🎵 s_rock_music_app

A responsive Flutter app built using the **MVVM architecture** that displays dynamic service cards like AC Repair, Car Wash, etc., fetched from **Firebase Firestore**. State management is handled using **Provider**.

---

## 📁 Folder Structure & Approach

```

lib/
├── model/
│   └── music\_service.dart          # Represents a service (title, desc, icon)
├── view\_model/
│   └── home\_view\_model.dart        # Manages app state, interacts with repo
├── view/
│   └── home/
│       ├── home\_page\_view\.dart     # Main UI for home screen
│       └── widgets/
│           ├── BookButton.dart   # Service UI card
│           └── Header.dart├── BookButton.dart   # Service UI card
│           └── service_tile.dart# Search + profile widget
└── main.dart                       # App entry point, sets up Provider

````

---

## 🧠 Approach

- **Model**: Defines service item structure.
- **ViewModel**: Handles logic and exposes service list to the UI.
- **View**: Builds UI using data from ViewModel via `Provider`.
- **State Management**: Done using the `provider` package for simplicity and clarity.
- **UI**: Designed to be fully responsive using `MediaQuery` sizing.

---

## 🚀 Getting Started

- Add your Firebase config files (`google-services.json` / `GoogleService-Info.plist`)
- Enable Firestore and update rules:
```js
rules_version = '2';
service cloud.firestore {
  match /databases/{database}/documents {
    match /{document=**} {
      allow read: if true;
      allow write: if false;
    }
  }
}
````

* Run `flutter pub get` and then `flutter run`

---

## 📦 Dependencies

```yaml
provider: ^6.1.2
cloud_firestore: ^4.8.0
```

---

This structure ensures clean separation of concerns, responsive layout, and easy maintenance.


```
