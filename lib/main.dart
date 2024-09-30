import 'package:flutter/material.dart';

void main() {
  runMainApp();
}

void runMainApp() {
  runApp(const Center(child: Flavor()));
}

class Flavor extends StatefulWidget {
  const Flavor({super.key});

  @override
  State<Flavor> createState() => _FlavorState();
}

class _FlavorState extends State<Flavor> {
  String? _flavor;

  @override
  void initState() {
    super.initState();
    _flavor = const String.fromEnvironment('FLUTTER_APP_FLAVOR');
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: _flavor == null
        ? const Text('Awaiting flavor...')
        : Text(_flavor!, key: const ValueKey<String>('flavor')),
    );
  }
}
