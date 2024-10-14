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
      name: name.nativeName.spa.common,
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

class CapitalInfo {
  final List<double> latlng;

  CapitalInfo({
    required this.latlng,
  });

  factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
        latlng: List<double>.from(json["latlng"].map((x) => x?.toDouble())),
      );

  Map<String, dynamic> toJson() => {
        "latlng": List<dynamic>.from(latlng.map((x) => x)),
      };
}

class Car {
  final List<String> signs;
  final String side;

  Car({
    required this.signs,
    required this.side,
  });

  factory Car.fromJson(Map<String, dynamic> json) => Car(
        signs: List<String>.from(json["signs"].map((x) => x)),
        side: json["side"],
      );

  Map<String, dynamic> toJson() => {
        "signs": List<dynamic>.from(signs.map((x) => x)),
        "side": side,
      };
}

class CoatOfArms {
  final String png;
  final String svg;

  CoatOfArms({
    required this.png,
    required this.svg,
  });

  factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
        png: json["png"],
        svg: json["svg"],
      );

  Map<String, dynamic> toJson() => {
        "png": png,
        "svg": svg,
      };
}

class Currencies {
  final Eur eur;

  Currencies({
    required this.eur,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => Currencies(
        eur: Eur.fromJson(json["EUR"]),
      );

  Map<String, dynamic> toJson() => {
        "EUR": eur.toJson(),
      };
}

class Eur {
  final String name;
  final String symbol;

  Eur({
    required this.name,
    required this.symbol,
  });

  factory Eur.fromJson(Map<String, dynamic> json) => Eur(
        name: json["name"],
        symbol: json["symbol"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "symbol": symbol,
      };
}

class Demonyms {
  final Eng eng;
  final Eng fra;

  Demonyms({
    required this.eng,
    required this.fra,
  });

  factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
        eng: Eng.fromJson(json["eng"]),
        fra: Eng.fromJson(json["fra"]),
      );

  Map<String, dynamic> toJson() => {
        "eng": eng.toJson(),
        "fra": fra.toJson(),
      };
}

class Eng {
  final String f;
  final String m;

  Eng({
    required this.f,
    required this.m,
  });

  factory Eng.fromJson(Map<String, dynamic> json) => Eng(
        f: json["f"],
        m: json["m"],
      );

  Map<String, dynamic> toJson() => {
        "f": f,
        "m": m,
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

class Gini {
  final double the2018;

  Gini({
    required this.the2018,
  });

  factory Gini.fromJson(Map<String, dynamic> json) => Gini(
        the2018: json["2018"]?.toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "2018": the2018,
      };
}

class Idd {
  final String root;
  final List<String> suffixes;

  Idd({
    required this.root,
    required this.suffixes,
  });

  factory Idd.fromJson(Map<String, dynamic> json) => Idd(
        root: json["root"],
        suffixes: List<String>.from(json["suffixes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "root": root,
        "suffixes": List<dynamic>.from(suffixes.map((x) => x)),
      };
}

class Languages {
  final String spa;
  final String cat;
  final String eus;
  final String glc;

  Languages({
    required this.spa,
    required this.cat,
    required this.eus,
    required this.glc,
  });

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        spa: json["spa"],
        cat: json["cat"],
        eus: json["eus"],
        glc: json["glc"],
      );

  Map<String, dynamic> toJson() => {
        "spa": spa,
        "cat": cat,
        "eus": eus,
        "glc": glc,
      };
}

class Maps {
  final String googleMaps;
  final String openStreetMaps;

  Maps({
    required this.googleMaps,
    required this.openStreetMaps,
  });

  factory Maps.fromJson(Map<String, dynamic> json) => Maps(
        googleMaps: json["googleMaps"],
        openStreetMaps: json["openStreetMaps"],
      );

  Map<String, dynamic> toJson() => {
        "googleMaps": googleMaps,
        "openStreetMaps": openStreetMaps,
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
  final Translation spa;

  NativeName({
    required this.spa,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
        spa: Translation.fromJson(json["spa"]),
      );

  Map<String, dynamic> toJson() => {
        "spa": spa.toJson(),
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

class PostalCode {
  final String format;
  final String regex;

  PostalCode({
    required this.format,
    required this.regex,
  });

  factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
        format: json["format"],
        regex: json["regex"],
      );

  Map<String, dynamic> toJson() => {
        "format": format,
        "regex": regex,
      };
}
