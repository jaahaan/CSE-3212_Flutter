import 'package:flutter/material.dart';

import 'converter_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Currency Converter",
      // theme: ThemeData.dark(),
      home: ConverterPage(),
    );
  }
}
