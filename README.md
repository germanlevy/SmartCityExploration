## SmartCityExploration-glevy

iOS application built with SwiftUI and MapKit to explore cities: search them in a list and view their location on a map. It follows an MVVM architecture with a repository layer abstraction to swap data sources/persistence without impacting the UI.

### Features
- **Searchable list**: real-time filtering by name.
- **Map detail**: centers the map on the selected city.
- **Favorites**: swipe action to mark a city as favorite.
- **Architecture**: MVVM + Repository.
- **Testing**: ViewModel tests using Swift Testing (`import Testing`).

### Requirements
- **Xcode**: 15 or later.
- **iOS**: 17 or later (uses `@Observable`/Observation and SwiftUI/MapKit `Map`).
- **macOS**: compatible with the required Xcode version.

### Project structure
```
SmartCityExploration-glevy/
├─ SmartCityExploration-glevy.xcodeproj/
├─ SmartCityExploration-glevy/
│  ├─ Assets.xcassets/
│  ├─ Model/
│  │  ├─ City.swift
│  │  └─ CityList.swift
│  ├─ View/
│  │  ├─ CitiesMapView.swift
│  │  └─ CityListView.swift
│  ├─ ViewModel/
│  │  ├─ CityListViewModel.swift
│  │  ├─ CoreDataRepository.swift
│  │  ├─ DataManager.swift
│  │  └─ DataRepository.swift
│  └─ SmartCityExploration_glevyApp.swift
├─ SmartCityExploration-glevyTests/
│  ├─ CityListViewModelTests.swift
│  ├─ MockedCityList.swift
│  └─ SmartCityExploration_glevyTests.swift
└─ SmartCityExploration-glevyUITests/
   ├─ SmartCityExploration_glevyUITests.swift
   └─ SmartCityExploration_glevyUITestsLaunchTests.swift
```

### Architecture
- **Model**: `City`, `CityList` (in-memory demo data).
- **View**: `CityListView` (list + search + navigation), `CitiesMapView` (map centered on selected city).
- **ViewModel**: `CityListViewModel` (filtering logic and search state).
- **Repository**: `DataRepository` (protocol), `CoreDataRepository` (stub for persistence), `DataManager` (orchestrator for sync and favorites; pending implementation).

### How to run
1. Open `SmartCityExploration-glevy.xcodeproj` in Xcode 15+.
2. Select an iOS 17+ simulator (e.g., iPhone 15).
3. Run with the Run button or `Cmd + R`.

> Note: The initial list of cities comes from `Model/CityList.swift`. Favorites are marked in memory and are not persisted yet between sessions.

### How to run tests
- In Xcode: `Product > Test` or `Cmd + U`.
- From terminal (optional):
```bash
xcodebuild test \
  -project SmartCityExploration-glevy.xcodeproj \
  -scheme SmartCityExploration-glevy \
  -destination 'platform=iOS Simulator,name=iPhone 15,OS=17.0'
```

Main tests live in `SmartCityExploration-glevyTests/CityListViewModelTests.swift` and validate text filtering of `CityListViewModel` using `swift-testing`.

### Implementation details
- `City` conforms to `Identifiable` and `Hashable`, and includes `isFavorite` with `setFavorite()`.
- `CityListView` uses `NavigationSplitView` for master-detail and `.searchable` for search.
- `CitiesMapView` uses `Map` and `MapCameraPosition` to center the view on the city's coordinates.

### Roadmap (suggested next steps)
- Implement real persistence in `CoreDataRepository` and wire it through `DataManager`.
- Integrate a City API to update and normalize the catalog (`DataManager.updateAllCities`).
- Persist favorites in `UserDefaults` (`DataManager.saveFavouriteCity`).
- UI/UX improvements: favorite indicators, favorites section, empty/error states.
- Internationalization (i18n) and Accessibility (A11y).
- UI tests (XCTest UI) and more ViewModel coverage.

### License
To be defined.

### Author
German Levy
