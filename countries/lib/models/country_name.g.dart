// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_name.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountryName _$CountryNameFromJson(Map<String, dynamic> json) => CountryName(
      json['common'] as String,
      json['official'] as String,
      (json['native'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, Translation.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$CountryNameToJson(CountryName instance) =>
    <String, dynamic>{
      'common': instance.common,
      'official': instance.official,
      'native': instance.native,
    };
