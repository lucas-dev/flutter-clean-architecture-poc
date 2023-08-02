// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniversitiesResponse _$$_UniversitiesResponseFromJson(
        Map<String, dynamic> json) =>
    _$_UniversitiesResponse(
      aaData: (json['aaData'] as List<dynamic>)
          .map((e) => (e as List<dynamic>).map((e) => e as String?).toList())
          .toList(),
      iTotalDisplayRecords: json['iTotalDisplayRecords'] as int,
      iTotalRecords: json['iTotalRecords'] as int,
      sEcho: json['sEcho'] as int,
    );

Map<String, dynamic> _$$_UniversitiesResponseToJson(
        _$_UniversitiesResponse instance) =>
    <String, dynamic>{
      'aaData': instance.aaData,
      'iTotalDisplayRecords': instance.iTotalDisplayRecords,
      'iTotalRecords': instance.iTotalRecords,
      'sEcho': instance.sEcho,
    };
