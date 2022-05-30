// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Country _$CountryFromJson(Map<String, dynamic> json) => Country(
      CountryName.fromJson(json['name'] as Map<String, dynamic>),
      (json['tld'] as List<dynamic>).map((e) => e as String).toList(),
      json['cca2'] as String,
      json['ccn3'] as String,
      json['cca3'] as String,
      json['cioc'] as String,
      json['independent'] as bool?,
      json['status'] as String,
      json['unMember'] as bool?,
      (json['capital'] as List<dynamic>).map((e) => e as String).toList(),
      (json['altSpellings'] as List<dynamic>).map((e) => e as String).toList(),
      json['region'] as String,
      json['subregion'] as String,
      Map<String, String>.from(json['languages'] as Map),
      (json['translations'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
      ),
      (json['latlng'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
      json['landlocked'] as bool?,
      (json['borders'] as List<dynamic>).map((e) => e as String).toList(),
      (json['area'] as num).toDouble(),
      json['flag'] as String,
    );

Map<String, dynamic> _$CountryToJson(Country instance) => <String, dynamic>{
      'name': instance.name,
      'tld': instance.domains,
      'cca2': instance.cca2,
      'ccn3': instance.ccn3,
      'cca3': instance.cca3,
      'cioc': instance.cioc,
      'independent': instance.independent,
      'status': instance.status,
      'unMember': instance.unMember,
      'capital': instance.capital,
      'altSpellings': instance.altSpellings,
      'region': instance.region,
      'subregion': instance.subregion,
      'languages': instance.languages,
      'translations': instance.translations,
      'latlng': instance.latlng,
      'landlocked': instance.landlocked,
      'borders': instance.borders,
      'area': instance.area,
      'flag': instance.flag,
    };
