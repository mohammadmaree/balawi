# Ebtikar Task - Food Delivery App

A food delivery application that showcases modern mobile development practices with a clean architecture approach.

## 🚀 Features

- Home Screen: Display a list of food categories and featured items.
- Menu Screen: Display a list of menu items.
- Item Details Screen: Show full item details.
- Add items to cart
- Cart Screen: Display added items. Include a "Checkout" button.

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK (3.35.1)
- Dart SDK (3.9.0)

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/mohammadmaree/ebtikar_task.git
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


## 🏛️ What is Clean Architecture?

**Clean Architecture** is a way to organize code into separate layers, each with a clear responsibility. This makes the code easier to maintain, test, and scale. The main idea is to separate **business logic** from **user interface** and data access methods.


### 📦 Main Layers

1. **Data Layer (Data Access)**
   - Responsible for fetching data from any source (API, Database, Local Storage).
   - Contains **Models**, **Repository Implementations**, and **DataSources**.

2. **Domain Layer (Business Logic)**
   - Contains **UseCases**, and **Repository interfaces**.
   - **UseCases**: Single-purpose actions (e.g., AddItemToCart, GetCartItems).
   - **Repositories (Interfaces)**: Define contracts for data operations without knowing the implementation.

3. **Presentation Layer (UI)**
   - Responsible for displaying data and handling user interactions.
   - Contains **Widgets, Pages, Cubits/Blocs**.


### 🔄 Why Use Clean Architecture?

- Separating responsibilities makes the code easier to read and maintain.
- Changing the UI or data source does not affect business logic.
- Enables teamwork, as developers can work on different layers without breaking others.


### Project Structure
```
lib/
├── core/                  # Core utilities, constants, extensions
├── features/              # Feature modules
│   ├── home/              # Home feature
│   │   ├── data/          # Data layer (models, datasources, repositories implementations)
│   │   ├── domain/        # Domain layer (use cases, repository interfaces)
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
### Dependencies
- **flutter_bloc**: For state management
- **get_it**: For dependency injection
- **dio**: For network requests
- **shared_preferences**: For local storage
- **go_router**: For navigation
- **connectivity_plus**: For network connectivity checks
- **fluttertoast**: For showing toast messages


## 📱 Demo

[Insert link to demo video here]
