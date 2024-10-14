import 'package:country_app/domain/country.dart';
import 'package:country_app/provider/country_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CountryScreen extends StatefulWidget {
  const CountryScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen>
{

  @override
  Widget build(BuildContext context) {
  final CountryProvider countryProvider;
  Country country = countryProvider.countryList.first;
    // Si 'country' es nulo, muestra el indicador de carga.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Información del País'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              country.name,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            Image.network(
              country.imageUrl!,
              width: 300,
              height: 200,
            ),
            Text('Capital: ${country.capital}',
              style: const TextStyle(fontSize: 22),
            ),
            Text(
              country.description,
              style: const TextStyle(fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}