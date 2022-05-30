import 'package:countries/models/translation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'country_name.g.dart';

@JsonSerializable()
class CountryName {
  CountryName(this.common, this.official, this.native);

  factory CountryName.fromJson(Map<String, dynamic> json) =>
      _$CountryNameFromJson(json);

  final String common;
  final String official;
  final Map<String, Translation> native;
}
