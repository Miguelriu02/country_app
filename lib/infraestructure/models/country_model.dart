import 'package:country_app/domain/country.dart';

class CountryModel {
  final Name name;
  final List<String> capital;
  final Flags flags;

  CountryModel({
    required this.name,
    required this.capital,
    required this.flags,
  });

  Country toCountryEntity() => Country(
      name: name.nativeName.nameTranslater.common,
      capital: capital.first,
      imageUrl: flags.png,
      description: flags.alt);

  factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
        name: Name.fromJson(json["name"]),
        capital: List<String>.from(json["capital"].map((x) => x)),
        flags: Flags.fromJson(json["flags"])
      );

  Map<String, dynamic> toJson() => {
        "name": name.toJson(),
        "capital": List<dynamic>.from(capital.map((x) => x)),
        "flags": flags.toJson(),
      };
}


class Flags {
  final String png;
  final String svg;
  final String alt;

  Flags({
    required this.png,
    required this.svg,
    required this.alt,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
        png: json["png"],
        svg: json["svg"],
        alt: json["alt"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
        "alt": alt,
      };
}

class Name {
  final String common;
  final String official;
  final NativeName nativeName;

  Name({
    required this.common,
    required this.official,
    required this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
        common: json["common"],
        official: json["official"],
        nativeName: NativeName.fromJson(json["nativeName"]),
      );

  Map<String, dynamic> toJson() => {
        "common": common,
        "official": official,
        "nativeName": nativeName.toJson(),
      };
}

class NativeName {
  final Translation nameTranslater;

  NativeName({
    required this.nameTranslater,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        nameTranslater: Translation.fromJson(json[json.keys.first]),
      );

  Map<String, dynamic> toJson() => {
        "spa": nameTranslater.toJson(),
      };
}

class Translation {
  final String official;
  final String common;

  Translation({
    required this.official,
    required this.common,
  });

  factory Translation.fromJson(Map<String, dynamic> json) => Translation(
        official: json["official"],
        common: json["common"],
      );

  Map<String, dynamic> toJson() => {
        "official": official,
        "common": common,
      };

}
