// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'universities_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UniversitiesApi implements UniversitiesApi {
  _UniversitiesApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://anabin.kmk.org';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<UniversitiesResponse> fetchUniversities(countryName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'land': countryName};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UniversitiesResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/index.php?eID=user_anabin_institutionen&conf=institutionsergebnisliste&iDisplayStart=0&iDisplayLength=10000',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UniversitiesResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
