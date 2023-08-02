// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'countries_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CountriesResponse _$$_CountriesResponseFromJson(Map<String, dynamic> json) =>
    _$_CountriesResponse(
      countries: (json['countries'] as List<dynamic>?)
          ?.map((e) => CountryResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_CountriesResponseToJson(
        _$_CountriesResponse instance) =>
    <String, dynamic>{
      'countries': instance.countries,
    };
