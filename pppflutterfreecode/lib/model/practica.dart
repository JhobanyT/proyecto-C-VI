class Country {
  final String? name;
  final String? capital;
  final String? region;
  final int? population;

  const Country({
    this.name,
    this.capital,
    this.region,
    this.population
  });
}

final countries = [
  new Country(name:'Belarus',capital:'Minsk'),
  new Country(name:'Bulgaria',capital:'Sofia'),
  new Country(name:'Czech Republic',capital:'Prague'),
  new Country(name:'Denmark',capital:'Copenhagen'),
  new Country(name:'Italy',capital:'Rome'),
  new Country(name:'Liechtenstein',capital:'Vaduz'),
  new Country(name:'Norway',capital:'Oslo'),
  new Country(name:'Spain',capital:'Madrid'),
  new Country(name:'Sweden',capital:'Stockholm'),
  new Country(name:'Ukraine',capital:'Kiev'),
];