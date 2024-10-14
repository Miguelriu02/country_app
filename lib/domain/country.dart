class Country {
  final String name;
  final String capital;
  final String? imageUrl;
  final String description;

  Country(
      {required this.name,
      required this.capital,
      this.imageUrl,
      required this.description});
}
