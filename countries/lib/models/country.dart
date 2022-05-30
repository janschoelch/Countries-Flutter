import 'package:countries/models/country_name.dart';
import 'package:countries/models/translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country.g.dart';

@JsonSerializable()
class Country {
  Country(
    this.name,
    this.domains,
    this.cca2,
    this.ccn3,
    this.cca3,
    this.cioc,
    this.independent,
    this.status,
    this.unMember,
    this.capital,
    this.altSpellings,
    this.region,
    this.subregion,
    this.languages,
    this.translations,
    this.latlng,
    this.landlocked,
    this.borders,
    this.area,
    this.flag,
  );

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);

  final CountryName name;
  @JsonKey(name: 'tld')
  final List<String> domains;
  final String cca2;
  final String ccn3;
  final String cca3;
  final String cioc;
  final bool? independent;
  final String status;
  final bool? unMember;
  final List<String> capital;
  final List<String> altSpellings;
  final String region;
  final String subregion;
  final Map<String, String> languages;
  final Map<String, Translation> translations;
  final List<double> latlng;
  final bool? landlocked;
  final List<String> borders;
  final double area;
  final String flag;
}
