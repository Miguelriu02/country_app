import 'package:country_app/config/helpers/country_model_answer.dart';
import 'package:country_app/domain/country.dart';
import 'package:flutter/material.dart';

class CountryProvider extends ChangeNotifier
{
  late List<Country> countryList;

  final getCountry = GetCountryModel();

  Future <void> provideCountry() async
  {
    final country = await getCountry.getAnswer();

    countryList.add(country);
    
    notifyListeners();

  }
}