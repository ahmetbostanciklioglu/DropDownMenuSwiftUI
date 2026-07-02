<div align="center">

# 🔽 DropDown Menu SwiftUI

**An animated, expandable dropdown menu component built with SwiftUI**

<p>
  <img src="https://img.shields.io/badge/Platform-iOS-black?style=flat-square&logo=apple" alt="Platform iOS" />
  <img src="https://img.shields.io/badge/Swift-5.0-orange?style=flat-square&logo=swift&logoColor=white" alt="Swift" />
  <img src="https://img.shields.io/badge/SwiftUI-blue?style=flat-square&logo=swift&logoColor=white" alt="SwiftUI" />
  <img src="https://img.shields.io/badge/Xcode-informational?style=flat-square&logo=xcode&logoColor=white" alt="Xcode" />
  <img src="https://img.shields.io/github/stars/ahmetbostanciklioglu/DropDownMenuSwiftUI?style=flat-square&color=6E48AA" alt="Stars" />
  <img src="https://img.shields.io/github/last-commit/ahmetbostanciklioglu/DropDownMenuSwiftUI?style=flat-square&color=4776E6" alt="Last commit" />
</p>

</div>

## 📖 Overview

DropDown Menu SwiftUI is a small, self-contained example of a collapsible dropdown menu built entirely in SwiftUI. Tapping the **Expand** button toggles a spring-animated reveal of a list of selectable options, with a chevron that flips between up and down to reflect the current state. The view is driven by an `ObservableObject` view model and styled with a red-to-orange linear gradient card, making it an easy starting point for menus, filters, or accordion-style UI.

## ✨ Features

- 🔽 Tap-to-toggle **Expand / collapse** dropdown with an up/down chevron indicator.
- 🌀 Smooth spring animation on expand and collapse.
- 🧩 Options driven by a `CaseIterable` enum (`one`, `two`, `three`) and rendered dynamically with `ForEach`.
- 🎯 Per-option selection handling routed through an `Actions` helper.
- 🎨 Rounded card styling with a red-to-orange linear gradient background.
- 🏗️ Clean separation of concerns: `View`, `ViewModel`, and reusable `Helpers`.

## 📸 Preview

<div align="center">
  <img width="1161" height="744" alt="Screenshot 2025-12-06 at 00 16 27" src="https://github.com/user-attachments/assets/cef48282-7433-4795-93dd-ceefdbb142e7" />
  <img width="705" height="361" alt="Screenshot 2025-12-06 at 00 16 32" src="https://github.com/user-attachments/assets/da3ebfb5-65cc-4385-a56e-9b65616a55e2" />
  <img width="834" height="524" alt="Screenshot 2025-12-06 at 00 16 42" src="https://github.com/user-attachments/assets/a74665b6-5135-4b5d-baea-fd83a34a2d3b" />
  <img width="462" height="372" alt="Screenshot 2025-12-06 at 00 16 47" src="https://github.com/user-attachments/assets/4e4c174d-9fd3-4761-bc22-8cefbbb77db4" />
</div>

## 🚀 Getting Started

```bash
git clone https://github.com/ahmetbostanciklioglu/DropDownMenuSwiftUI.git
cd DropDownMenuSwiftUI
open DropDownMenuSwiftUI.xcodeproj
```

Once the project is open in Xcode, select an iOS Simulator and press **⌘R** to build and run.

## 🛠️ Usage

Create the view model and drop `DropDownView` anywhere in your view hierarchy:

```swift
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()

    var body: some View {
        DropDownView(viewModel: viewModel)
    }
}
```

Selection behavior lives in `Actions.toggleOption(option:)`, where you can replace the placeholder `print` statements with your own logic for each `Options` case.

## 📋 Requirements

- iOS 15.6+
- Xcode 15 or later
- Swift 5.0

## 🧑‍💻 Author

**Ahmet Bostancıklıoğlu** — [@ahmetbostanciklioglu](https://github.com/ahmetbostanciklioglu) · ahmetbostancikli@gmail.com

> ⭐ If this helped you, consider giving the repo a star!
