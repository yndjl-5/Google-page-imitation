# GoogleImitation

A SwiftUI recreation of the Google app home screen, featuring a search interface, quick actions, information cards, and a Discover-style news card.

> This project was created for learning and UI implementation practice. It is not affiliated with or endorsed by Google LLC.

## Features

- Google-inspired home screen and search bar
- Quick actions for AI mode, voice features, and more
- Weather, sunrise, and customizable information cards
- Google Discover-inspired news card
- Interactive favorite button
- Native sharing with `ShareLink`
- Light and dark appearance toggle
- Persistent appearance preference using `@AppStorage`
- SF Symbols and SwiftUI animations

## Built With

- Swift
- SwiftUI
- AppStorage
- ShareLink
- Asset Catalog
- SF Symbols

## Project Structure

```text
GoogleImitation/
├── Assets.xcassets/       # Images and color assets
├── ContentView.swift      # Home screen, search, information cards, and navigation
├── NewsCardView.swift     # Discover-style news card
└── MyApp.swift            # App entry point
```

## Getting Started

1. Clone the repository:

   ```bash
   git clone https://github.com/yndjl-5/Google-page-imitation.git
   ```

2. Open `GoogleImitation.xcodeproj` in Xcode.
3. Select an iPhone simulator or a connected device.
4. Click Run or press `Command + R`.

## Current Limitations

The content and news data are currently static. The search bar and several icons are visual components only and are not connected to Google Search or any external API.

## Possible Improvements

- Add live search suggestions
- Implement voice search
- Integrate weather and news APIs
- Add navigation and complete the quick actions
- Improve accessibility and test coverage

