<div align="center">

# 📇 JulioCard

**A digital business card built natively for iOS with SwiftUI**

![Swift](https://img.shields.io/badge/Swift-5.9-F05138?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-Framework-0069D9?style=for-the-badge&logo=swift&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-16%2B-000000?style=for-the-badge&logo=apple&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-15-147EFB?style=for-the-badge&logo=xcode&logoColor=white)

</div>

---

## 📱 Preview

<p align="center">
  <img src="JulioCard-mock.png" width="300">
</p>

---

## 📖 About

**JulioCard** is an iOS app built entirely with SwiftUI to serve as an interactive digital business card. The project was created to practice and consolidate core SwiftUI concepts: layout composition, reusable component extraction, enum-driven UI abstraction, custom font integration, and asset management — all in a clean, real-world context.

---

## ✨ Features

- 🎨 **Custom profile layout** — built with `ZStack` and `VStack` for layered, structured composition
- 🧩 **Reusable `InfoView` component** — a single, flexible view handles all contact/info rows across the card
- 🔠 **Enum-based icon handling** — a dedicated `enum` abstracts the difference between SF Symbols and custom asset images, keeping call sites clean
- 🖋️ **Custom font integration** — non-system fonts registered and applied across the card
- 🖼️ **Asset vs System image handling** — unified approach for switching between `Image(systemName:)` and `Image(_:)` based on the icon source
- 📐 **Clean SwiftUI structure** — fully declarative, no UIKit dependencies

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Language | Swift 5.9 |
| UI Framework | SwiftUI |
| Icons | SF Symbols + Custom Assets |
| Fonts | Custom font registered in `Info.plist` |
| IDE | Xcode 15 |
| Platform | iOS 16+ |

---

## 🔍 Key Implementation Details

### Layout with ZStack + VStack

The card uses a `ZStack` to layer the background visuals behind the content, with `VStack` and `HStack` composing the profile header and info rows.

```swift
ZStack {
    // Background gradient or image layer
    LinearGradient(...)

    VStack(alignment: .leading, spacing: 16) {
        // Profile image, name, role
        HStack { ... }

        // Contact info rows
        InfoView(icon: .system("envelope"), text: "email@example.com")
        InfoView(icon: .system("phone"), text: "+55 (48) 9 9999-9999")
        InfoView(icon: .asset("github-icon"), text: "github.com/jcezart")
    }
    .padding()
}
```

### Reusable InfoView Component

Rather than repeating icon + text pairs across the layout, a single `InfoView` component handles every contact row. This makes the main view clean and easy to extend.

```swift
struct InfoView: View {
    let icon: IconType
    let text: String

    var body: some View {
        HStack(spacing: 12) {
            // Renders system or asset icon based on enum case
            icon.image
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)

            Text(text)
                .font(.custom("YourFont", size: 14))
                .foregroundColor(.white)
        }
    }
}
```

### Enum-Based Icon Abstraction

An `IconType` enum cleanly separates SF Symbols from custom asset images, avoiding conditionals scattered across the UI.

```swift
enum IconType {
    case system(String)
    case asset(String)

    var image: Image {
        switch self {
        case .system(let name):  return Image(systemName: name)
        case .asset(let name):   return Image(name)
        }
    }
}
```

### Custom Font Registration

Custom fonts are bundled in the Xcode project, declared in `Info.plist`, and applied via SwiftUI's `.font(.custom(...))` modifier — no UIKit bridge needed.

```swift
// Applied across the card
Text("Julio Cezar")
    .font(.custom("YourFontName-Bold", size: 22))
    .foregroundColor(.white)
```

---

## 🏗️ Project Structure

```
JulioCard/
├── JulioCard/
│   ├── ContentView.swift       # Main card layout (ZStack + VStack)
│   ├── InfoView.swift          # Reusable contact row component
│   ├── IconType.swift          # Enum for SF Symbol vs asset icons
│   ├── Assets.xcassets/        # Images, colors, app icon
│   │   └── (custom icons, profile photo)
│   ├── Fonts/                  # Custom font files (.ttf / .otf)
│   └── Info.plist              # Font registration
└── JulioCard.xcodeproj
```

---

## 🚀 Getting Started

### Prerequisites

- macOS 13+ (Ventura or later)
- Xcode 15+
- iOS Simulator or physical device running iOS 16+

### Installation

1. **Clone the repository**
```bash
git clone https://github.com/jcezart/julioCard.git
```

2. **Open in Xcode**
```bash
cd julioCard
open JulioCard.xcodeproj
```

3. **Run the app**

Select a simulator or connected device and press `⌘ + R`.

---

## 📚 Concepts Practiced

- Declarative UI composition with **SwiftUI** (`ZStack`, `VStack`, `HStack`)
- **Component extraction** — breaking UI into small, reusable views
- **View composition** — assembling complex layouts from simple building blocks
- **Enum for UI abstraction** — `IconType` enum unifying system and asset icons
- **Custom font integration** in a SwiftUI-only project
- **Asset vs System image** handling with a clean, unified API
- SwiftUI **modifiers** — `.foregroundColor`, `.font`, `.padding`, `.frame`, `.scaledToFit`

---

## 👨‍💻 Author

**Julio Cezar Grassi Teixeira** — iOS & Android Developer

[![GitHub](https://img.shields.io/badge/GitHub-jcezart-181717?style=flat-square&logo=github)](https://github.com/jcezart)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-jcgteixeira-0A66C2?style=flat-square&logo=linkedin)](https://linkedin.com/in/jcgteixeira)

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

<div align="center">
  Made with ❤️ and Swift · <a href="https://github.com/jcezart">@jcezart</a>
</div>
