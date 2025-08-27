# Ebtikar Task - Food Delivery App

A Flutter-based food delivery application that showcases modern mobile development practices with a clean architecture approach.

## 🚀 Features

- Browse food categories
- View featured food items
- Add items to cart
- Checkout

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK (3.35.1)
- Dart SDK (3.9.0)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/mohammadmaree/ebtikar_task.git
   cd ebtikar_task
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   ```bash
   flutter run
   ```

## 🏗️ Architecture

The app follows Clean Architecture principles with BLoC pattern for state management:

### Project Structure
```
lib/
├── core/                  # Core utilities, constants, extensions
├── features/              # Feature modules
│   ├── home/              # Home feature
│   │   ├── data/          # Data layer (models, datasources, repositories implementations)
│   │   ├── domain/        # Domain layer (entities, use cases, repository interfaces)
│   │   └── presentation/  # Presentation layer (pages, widgets, cubits/blocs)
│   ├── cart/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── menu/
│       ├── data/
│       ├── domain/
│       └── presentation/
├── dependency_injection/  # Dependency injection setup (GetIt)
└── main.dart              # App entry point

```

### State Management
- **BLoC/Cubit**: Used for state management due to its simplicity and predictability

### Dependencies
- **flutter_bloc**: For state management
- **get_it**: For dependency injection
- **dio**: For network requests
- **shared_preferences**: For local storage
- **go_router**: For navigation
- **connectivity_plus**: For network connectivity checks

## 📱 Demo

[Insert link to demo video here]
