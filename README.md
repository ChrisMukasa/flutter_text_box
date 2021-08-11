# flutter_text_box

This package help to use custom spinner with title, title with subtitle, title with icon.

[![Build Status](https://api.cirrus-ci.com/github/flutter/plugins.svg)](https://github.com/ChrisMukasa/flutter_text_box/blob/master)
[![Release Status](https://github.com/flutter/plugins/actions/workflows/release.yml/badge.svg)](https://github.com/ChrisMukasa/flutter_text_box/actions/workflows/release.yml)

## Usage
[Example link](https://github.com/ChrisMukasa/flutter_text_box/blob/master/example/example.dart)

To use this plugin, add flutter_text_box as a [dependency in your pubspec.yaml file.](https://flutter.dev/docs/development/platform-integration/platform-channels)

### Hou to use this package
  
```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_text_box: ^0.0.1 # 👈🏼 add this line
```

* Import the package to your main file
```dart
import 'package:flutter_text_box/flutter_text_box.dart';
```
## TextBox types
* TextBox with Label
* TextBox with Icon
### Title
```dart
TextBoxLabel({required this.label, required this.hint, required this.errorText, this.radius, this.inputType = TextInputType.text, this.obscure = false, required this.onSaved})
```
### Icon
```dart
TextBoxIcon({required this.icon, required this.label, required this.hint, required this.errorText, this.radius = 4, this.accent = Colors.blue, this.inputType = TextInputType.text, this.obscure = false, required this.onSaved})
```

## Example 1
```dart
TextBoxLabel(
  label: 'Fullname',
  hint: 'Please enter your fullname here',
  errorText: 'This field is requiered !',
  onSaved: (String value) { }, 
)
```

## Example 2
```dart
TextBoxIcon(
  icon: Icons.email_outlined, 
  inputType: TextInputType.emailAddress,
  label: 'Email',
  hint: 'Please enter your email address here',
  errorText: 'This field is requiered !',
  onSaved: (String value) { }, 
),

TextBoxIcon(
  icon: Icons.lock_outlined, 
  inputType: TextInputType.number,
  obscure: true,
  label: 'Password', 
  hint: 'Please enter your password here', 
  errorText: 'This field is requiered !', 
  onSaved: (String value){ }
)
```

## Screenshots

Global view 
![alt text](https://github.com/ChrisMukasa/flutter_text_box/blob/master/example/screenshots/1.png?raw=true)
Expanded view
![alt text](https://github.com/ChrisMukasa/flutter_text_box/blob/master/example/screenshots/2.png?raw=true)

For help getting started with TextBox package, view our 
[Gith repository](https://github.com/ChrisMukasa/flutter_text_box)