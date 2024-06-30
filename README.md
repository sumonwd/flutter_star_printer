# Star Micronics Flutter

A Flutter plugin for Star Micronics printers.

## Features

- Discover Star Micronics printers
- Check printer status
- Send print commands
- Support for various Star Micronics printer models

## Getting Started

To use this plugin, add `flutter_star_printer` as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  flutter_star_printer: ^0.0.1
```

## Usage

Here's a simple example of how to use the Star Micronics Flutter plugin:

```dart
import 'package:flutter_star_printer/flutter_star_printer.dart';

// Discover printers
List<PortInfo> ports = await FlutterStarPrinter.portDiscovery(StarPortType.All);

// Check printer status
PrinterResponseStatus status = await FlutterStarPrinter.getStatus(
  portName: ports[0].portName!,
  emulation: "StarPRNT",
);

// Print a receipt
PrintCommands commands = PrintCommands();
commands.appendEncoding(StarEncoding.UTF8);
commands.append("Hello, Star Micronics!");
commands.appendCutPaper(StarCutPaperAction.PartialCutWithFeed);

PrinterResponseStatus printStatus = await FlutterStarPrinter.sendCommands(
  portName: ports[0].portName!,
  emulation: "StarPRNT",
  printCommands: commands,
);
```

For more detailed examples, please check the `example` folder in the package repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.