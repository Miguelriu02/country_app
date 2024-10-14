import 'package:country_app/provider/country_provider.dart';
import 'package:country_app/screens/country_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const CountryApp());

class CountryApp extends StatelessWidget {
  const CountryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CountryProvider())],
      child: const MaterialApp(
        home: CountryScreen(),
      ),
    );
  }
}
