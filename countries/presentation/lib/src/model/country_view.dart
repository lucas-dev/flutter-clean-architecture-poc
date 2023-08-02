import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_view.freezed.dart';

@freezed
class CountryView with _$CountryView{
  const factory CountryView({required String id, required String name}) =
      _CountryView;
}
