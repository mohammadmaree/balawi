# Ebtikar Task - Food Delivery App

A Flutter-based food delivery application that showcases modern mobile development practices with a clean architecture approach.

## 🚀 Features

- Browse food categories
- View featured food items
- Add items to cart
- Smooth UI/UX with animations
- Responsive design for various screen sizes

## 🛠️ Setup Instructions

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK (included with Flutter)
- Android Studio / VS Code with Flutter extensions
- Android Emulator or physical device for testing

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/ebtikar_task.git
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
├── core/               # Core functionality
│   ├── error/         # Error handling
│   ├── resources/     # App constants, colors, themes
│   └── usecases/      # Base use case class
├── features/          # Feature modules
│   ├── home/          # Home feature
│   ├── cart/          # Cart feature
│   └── menu/          # Menu feature
└── dependency_injection/ # Dependency injection setup
```

### State Management
- **BLoC/Cubit**: Used for state management due to its simplicity and predictability
- **Equatable**: For value comparison in states
- **Dartz**: For functional programming concepts and error handling

### Dependencies
- **flutter_bloc**: For state management
- **get_it**: For dependency injection
- **dio**: For network requests
- **shared_preferences**: For local storage
- **go_router**: For navigation
- **connectivity_plus**: For network connectivity checks

## 🎨 UI/UX
- **Custom Themes**: Light/dark theme support
- **Responsive Layouts**: Adapts to different screen sizes
- **Animations**: Smooth transitions and micro-interactions
- **Custom Fonts**: Tajawal font family integrated

## 🧪 Testing

The app includes unit and widget tests:

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/features/home/presentation/cubit/home_cubit_test.dart
```

## 📱 Demo

[Insert link to demo video here]

## 📝 Assumptions & Limitations

### Assumptions
- Stable internet connection is available
- Backend API is always accessible
- User has granted necessary permissions (camera, location if needed)

### Limitations
- Offline functionality is limited
- Payment gateway integration is not implemented
- Real-time order tracking not included

## 🤝 Contributing

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- BLoC library maintainers
- All open-source contributors whose packages made this project possible