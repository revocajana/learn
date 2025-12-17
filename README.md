# Simple Calculator Flutter

This project is a simple calculator application built with Flutter. It includes various functionalities such as basic arithmetic operations, a BMI calculator, a unit converter, and a GPA calculator. Additionally, users can customize settings for decimal places and theme preferences.

## Features

- **Basic Calculator**: Perform basic arithmetic operations (addition, subtraction, multiplication, division).
- **BMI Calculator**: Calculate Body Mass Index based on user input for height and weight.
- **Unit Converter**: Convert between different units of measurement.
- **GPA Calculator**: Calculate Grade Point Average based on user input for grades.
- **Settings**: Customize the number of decimal places and switch between light and dark themes.
- **History**: Access previous calculations through a history icon.
- **Notes**: Detailed explanations of arithmetic, BMI, unit conversion, GPA, and settings are available in the notes folder.

## Project Structure

```
simple_calculator_flutter
├── lib
│   ├── main.dart
│   ├── app.dart
│   ├── screens
│   │   ├── home_screen.dart
│   │   ├── calculator_screen.dart
│   │   ├── bmi_screen.dart
│   │   ├── unit_converter_screen.dart
│   │   ├── gpa_screen.dart
│   │   └── settings_screen.dart
│   ├── widgets
│   │   ├── keypad.dart
│   │   ├── display.dart
│   │   ├── history_icon.dart
│   │   └── converter_widget.dart
│   ├── models
│   │   ├── calculation.dart
│   │   ├── unit.dart
│   │   └── gpa_entry.dart
│   ├── services
│   │   ├── calculator_service.dart
│   │   ├── history_service.dart
│   │   ├── unit_converter_service.dart
│   │   └── bmi_service.dart
│   ├── utils
│   │   ├── formatters.dart
│   │   └── constants.dart
│   └── theme
│       ├── app_theme.dart
│       └── themes.dart
├── test
│   ├── calculator_service_test.dart
│   └── widget_test.dart
├── assets
│   └── icons
├── notes
│   ├── arithmetic.md
│   ├── bmi.md
│   ├── unit_converter.md
│   ├── gpa.md
│   └── settings.md
├── pubspec.yaml
├── analysis_options.yaml
├── .gitignore
└── README.md
```

## Getting Started

To run this project, ensure you have Flutter installed on your machine. Clone the repository and navigate to the project directory. Then, run the following command to get the dependencies:

```
flutter pub get
```

Finally, run the application using:

```
flutter run
```

## Notes

For detailed explanations of the concepts implemented in this application, refer to the notes folder. Each file provides insights into the respective functionalities, enhancing your understanding of the calculations and conversions performed in the app.