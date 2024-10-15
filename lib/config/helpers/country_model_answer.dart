import 'package:country_app/domain/country.dart';
import 'package:country_app/infraestructure/models/country_model.dart';
import 'package:dio/dio.dart';

class GetCountryModel {
  final _dio = Dio();

  Future<Country> getAnswer() async 
  {
    final response = await _dio.get('https://restcountries.com/v3.1/name/spain');
    final countryModel = CountryModel.fromJson(response.data[0]);
    return countryModel.toCountryEntity();
  }
}
